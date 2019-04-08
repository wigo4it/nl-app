angular.module('umbraco')
    .controller('TranslationsController', ['$scope', '$http', 'treeService', 'nlAppContent', 'nlAppAuth',

        function ($scope, $http, treeService, nlAppContent, nlAppAuth) {

            $scope.init = function () {
                $scope.languages = getSiteLanguages();

                // Get access token for back office user
                var accessTokenResponse = nlAppAuth.getAccessToken('password', 'marco.wiggelinkhuizen@wigo4it.nl', 'Tijdelijk01!'); // TODO: Remove username and password from js file!!!
                accessTokenResponse.then(function (response) {
                    $http.defaults.headers.common.Authorization = response.token_type + ' ' + response.access_token;
                });

                $scope.loadMissingTranslations();

            };

            $scope.missingTranslations = { nodes: [] };

            $scope.loadMissingTranslations = function () {
                treeService.getTree({ section: "content" }).
                    then(function (data) {
                        var root = data.root.children[0];
                        var node = { page: root, childs: [] };

                        // TODO: Only show Gemeente content based on logged-in person
                        node = getAllChildren(node);
                        $scope.missingTranslations.nodes = [node];

                    }, function (response, status) {
                        console.log("The request treeService.getTree() failed with response " + response + " and status code " + status);
                    });
            }

            getAllChildren = function (node) {
                if (node.page) {
                    setTranslationState(node);

                    if (node.page.hasChildren) {

                        node.childs = [];

                        treeService.getChildren({ node: node.page, section: "content" }).then(
                            function (data) {

                                // navigate children
                                for (var child of data) {

                                    var childnode = { page: child, childs: [] };
                                    node.childs.push(childnode);

                                    getAllChildren(childnode);
                                }
                            },
                            function (response, status) {
                                console.log("The request treeService.getChildren() failed with response " + response + " and status code " + status);
                            }
                        );
                    }

                }
                return node;
            }

            getSiteLanguages = function () {
                // TODO: read from site!
                return [{ name: "Nederlands", culture: "nl-NL" }, { name: "Engels", culture: "en-US" }, { name: "Arabisch", culture: "ar-SY" }];
            }


            // TODO: Improve code quality
            setTranslationState = function (node) {
                nlAppContent.getNodeById(node.page.id).then((page) => {

                    var states = [];

                    if (page.data && page.data.properties) {

                        for (var prop in page.data.properties) {

                            var propValue = page.data.properties[prop];
                            var propObj = tryParseJSON(propValue);

                            if (isVortoProperty(propObj)) {

                                var langStates = [];
                                var isNestedProperty = isNestedVortoProperty(propObj);

                                if (isNestedProperty) {

                                    var nestedProperty = getNestedProperty(propObj);
                                    var propNames = getNestedPropertyNames(nestedProperty);

                                    if (propNames.length > 0) {
                                        for (var propName of propNames) {

                                            if (isDefaultNestedproperyName(propName)) {
                                                continue;
                                            }

                                            langStates = [];

                                            for (var lang1 of $scope.languages) {

                                                var val = nestedProperty.values[lang1.culture][0];

                                                var ls1 = languageState(lang1.name,
                                                    new Boolean(val && val[propName] && val[propName].length > 0));
                                                langStates.push(ls1);
                                            }

                                            var ts1 = translationState(propName, langStates, prop);
                                            states.push(ts1);
                                        }
                                    }
                                    else {
                                        for (var lang2 of $scope.languages) {

                                            var ls2 = languageState(lang2.name, false);
                                            langStates.push(ls2);
                                        }
                                        var ts = translationState(prop, langStates);
                                        states.push(ts);
                                    }

                                }
                                else {
                                    // normal vorto property
                                    for (var lang of $scope.languages) {
                                        var propVal = propObj.values[lang.culture];
                                        var ls = languageState(lang.name, propVal && propVal.length > 0);
                                        langStates.push(ls);
                                    }

                                    var ts = translationState(prop, langStates);
                                    states.push(ts);
                                }

                            }
                        }
                    }
                    node.translationState = states;
                });
            }

            isDefaultNestedproperyName = function (propName) {
                const defaultNestedPropNames = ["key", "name", "ncContentTypeAlias"];
                return defaultNestedPropNames.indexOf(propName) > -1;
            }

            isVortoProperty = function (propObj) {
                return propObj && propObj.values;
            }

            isNestedVortoProperty = function (propObj) {
                
                for (var lang of $scope.languages) {
                    var propVal = propObj.values[lang.culture];
                    var propNestedObj = tryParseJSON(propVal);
                    if (Array.isArray(propNestedObj)) {
                        return true;
                    }
                }

                return false;
            }

            getNestedProperty = function (propObj) {

                var nestedPropObj = propObj;

                for (var lang of $scope.languages) {
                    nestedPropObj.values[lang.culture] = tryParseJSON(propObj.values[lang.culture])
                }

                return nestedPropObj;
            }

            getNestedPropertyNames = function (nestedPropObj) {

                var propNames = [];

                for (var lang of $scope.languages) {
                    var propVal = nestedPropObj.values[lang.culture][0];
                    for (var prop in propVal) {
                        if (propNames.indexOf(prop) == -1) {
                            propNames.push(prop);
                        }
                    }
                }

                return propNames;
            }

            tryParseJSON = function (jsonString) {
                try {
                    var o = JSON.parse(jsonString);
                    if (o && typeof o === "object") {
                        return o;
                    }
                }
                catch (e) {
                    return false;
                }
                return false;
            };

            translationState = function (propName, languageStates, nestedPropName) {
                if (nestedPropName)
                    return { propName: propName, status: languageStates, nestedPropName: nestedPropName };
                else
                    return { propName: propName, status: languageStates };
            }

            languageState = function (language, isTranslated) {
                return { language: language, isTranslated: isTranslated };
            }

            $scope.init();
        }
    ]);
