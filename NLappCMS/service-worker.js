"use strict";

var cacheNameSwFiles = "nlapp-sw";
var cacheOptions = { ignoreSearch: false };
var SW_FILESTOCACHE_KEY = "sw_filestocache";

self.currentCultureAndCityPath = "";
self.currentScope = "/";
self.serviceworkerfilesResponse = null;

self.addEventListener("message", function (event) {
    switch (event.data.action) {
    case "skipWaiting": {
        self.skipWaiting();
        break;
    }
    case "clearFiles": {
        self.serviceworkerfilesResponse = null;
        break;
    }
    }
});

if (self.caches) {

    self.fallbackToCache = function (cache, request) {
        if (!cache) {
            return null;
        }

        self.fallbackCnt++;

        if (self.fallbackCnt > 10) {
            return Promise.reject();
        }

        return cache.match(request, cacheOptions).then(function (response) {
            // fetch from cache, if empty response use home page as fallback
            return response || cache.match(self.currentCultureAndCityPath, cacheOptions);
        }).catch(function () {
            if (request.url.indexOf(".") === -1
                && !request.url.pathname.endsWith("manifest")
                && !request.url.pathname.endsWith("serviceworkerfiles")
                && !request.url.pathname.endsWith("sitemap")) {
                // PageRequest! Not cached > show Home page
                console.log("Redirect to Home page", request.url);
                return cache.match(self.currentCultureAndCityPath, cacheOptions);
            }

            return Promise.resolve();
        });
    };

    self.responseAsArray = function (response) {
        if (response) {
            return response.clone().json()
                .then(function (result) {

                    if (result instanceof Array) {
                        return Promise.resolve(result);
                    }
                    return Promise.resolve([]);
                })
                .catch(function () {
                    return Promise.resolve([]);
                });
        }

        return Promise.resolve([]);
    };

    self.fetchServiceworkerFiles = function () {

        if (!self.serviceworkerfilesResponse) {
            return fetch(self.currentScope + "serviceworkerfiles",
                    { headers: { "content-type": "application/json; charset=UTF8" } })
                .then(function(response) {
                    self.serviceworkerfilesResponse = response;
                    return Promise.resolve(self.serviceworkerfilesResponse);
                });
        } else {
            return Promise.resolve(self.serviceworkerfilesResponse);
        }
    };

    self.tryRefreshCachedItems = function (event) {

        self.storeCurrentPath();

        return fetchServiceworkerFiles()
            .then(function (swFilesResponse) {
                const clonedResp = swFilesResponse.clone();

                return self.responseAsArray(swFilesResponse)
                    .then(function(arraySwFiles) {
                        var newHash = arraySwFiles.shift();

                        return caches.match(self.currentCultureAndCityPath + SW_FILESTOCACHE_KEY)
                            .then(function(respCachedSwFiles) {
                                return self.responseAsArray(respCachedSwFiles).then(
                                    function(arrayCachedSwFiles) {

                                        // only refresh cache when sitemap is changed
                                        if (!arrayCachedSwFiles || arrayCachedSwFiles[0] !== newHash) {
                                            return arraySwFiles.map(function(urlString) {
                                                var url = new URL(urlString);
                                                url.searchParams.append("pwa_cache_on_install", "1");
                                                return url.pathname;
                                            });
                                        } else {
                                            return [];
                                        }
                                    }
                                );
                            }).catch(function(reason) {
                                console.error(reason);
                                return [];
                            });
                    })
                    .then(function(filesToCache) {
                        return caches.open(cacheNameSwFiles)
                            .then(function(swCache) {
                                // add all pages to cache
                                for (var i = 0; i < filesToCache.length; i++) {
                                    try {
                                        swCache.add(filesToCache[i]);
                                    }
                                    catch (e) {
                                        // log and continue with rest
                                        console.log("Error loading " + filesToCache[i], e);
                                    }
                                }

                                return Promise.resolve();
                            });
                    })
                    .then(function() {

                        // store the serviceworkerfiles sitemap
                        return caches.open(cacheNameSwFiles)
                            .then(function(swCache) {
                                return swCache !== null ? swCache.put(self.currentCultureAndCityPath + SW_FILESTOCACHE_KEY, clonedResp) : null;
                            });
                    });
            })
            .catch(function (reason) {
                // offline, fetching a new sitemap is not possible
                console.error("tryRefreshCachedItems", reason);
                return Promise.resolve();
            });
    };

    self.storeCurrentPath = function () {
        self.currentCultureAndCityPath = new URL(self.registration.scope).pathname;
        if (!self.currentCultureAndCityPath.endsWith("/")) {
            self.currentCultureAndCityPath = self.currentCultureAndCityPath + "/";
        }

        self.currentScope = self.registration.scope;
        if (!self.currentScope.endsWith("/")) {
            self.currentScope = self.currentScope + "/";
        }
    };

    self.addEventListener("install", function (e) {
        e.waitUntil(
            caches.open(cacheNameSwFiles).then(function (cache) {
                if (!cache) {
                    return self.skipWaiting();
                } else {

                    // cache all pages from sitemap
                    return self.tryRefreshCachedItems(null)
                        .always(function () {
                            return self.skipWaiting();
                        });
                }
            }).catch(function () {
                return self.skipWaiting();
            })
        );
    });

    self.addEventListener("activate", function (e) {
        e.waitUntil(
            caches.open(cacheNameSwFiles).then(function (cache) {
                if (cache) {
                    cache.match(self.currentCultureAndCityPath + SW_FILESTOCACHE_KEY, cacheOptions)
                        .then(function (respFilesToCache) {

                            self.responseAsArray(respFilesToCache).then(function (arrFilesToCache) {

                                // remove hashcode
                                arrFilesToCache.splice(0, 1);

                                cache.keys().then(function (keyList) {
                                    return Promise.all(keyList.map(function (key) {

                                        if (!!arrFilesToCache && arrFilesToCache.indexOf(key.url) === -1 && !key.url.endsWith(self.currentCultureAndCityPath + SW_FILESTOCACHE_KEY)) {
                                            // cleanup unused cached items
                                            return cache.delete(key, cacheOptions);
                                        }

                                        return null;
                                    }));
                                });

                            });

                        });
                }
            })
        );
        return self.clients.claim();
    });

    // cache from network, use cache as fallback
    self.addEventListener("fetch", function (event) {
        event.respondWith(

            self.tryRefreshCachedItems(event)
                .then(function (result) {
                    return caches.open(cacheNameSwFiles)
                        .then(function (cache) {

                            // fetch from network, cache new version, fallback to cache
                            var req = event.request;

                            return fetch(req)
                                .then(function (responseValue) {
                                    var respCopy = responseValue.clone();

                                    var options = null;
                                    if (req.url.indexOf(".css?") === -1 && req.url.indexOf(".js?") === -1) {
                                        options = cacheOptions;
                                    }

                                    // update cache with latest version
                                    return cache.match(req, options)
                                        .then(
                                            function (response) {
                                                if (req.method === "GET") {
                                                    cache.put(req, respCopy);
                                                }

                                                self.fallbackCnt = 0;
                                                return responseValue;
                                            },
                                            function (reason) {
                                                console.warn("[ServiceWorker] Response is NOT cached", reason);
                                                return fallbackToCache(cache, event.request);
                                            }
                                        );
                                }).catch(function (err) {
                                    console.warn("[ServiceWorker] OFFLINE! Fetch from network error", err);

                                    if (event.request.url.indexOf("favicon.ico") !== -1) {
                                        return null;
                                    }

                                    return fallbackToCache(cache, event.request);
                                });
                        });
                })
                .catch(function (reason) {
                    console.error("FETCH ERROR", reason);
                })
        );
    });
}
