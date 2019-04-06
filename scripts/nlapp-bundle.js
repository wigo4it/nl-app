(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
"use strict";
var __assign = (this && this.__assign) || Object.assign || function(t) {
    for (var s, i = 1, n = arguments.length; i < n; i++) {
        s = arguments[i];
        for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
            t[p] = s[p];
    }
    return t;
};
exports.__esModule = true;
function stringifyAttribute(name, value) {
    if (!value) {
        return '';
    }
    var stringified = '; ' + name;
    if (value === true) {
        return stringified; // boolean attributes shouldn't have a value
    }
    return stringified + '=' + value;
}
function stringifyAttributes(attributes) {
    if (typeof attributes.expires === 'number') {
        var expires = new Date();
        expires.setMilliseconds(expires.getMilliseconds() + attributes.expires * 864e+5);
        attributes.expires = expires;
    }
    return stringifyAttribute('Expires', attributes.expires ? attributes.expires.toUTCString() : '')
        + stringifyAttribute('Domain', attributes.domain)
        + stringifyAttribute('Path', attributes.path)
        + stringifyAttribute('Secure', attributes.secure)
        + stringifyAttribute('SameSite', attributes.sameSite);
}
function encode(name, value, attributes) {
    return encodeURIComponent(name)
        .replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent) // allowed special characters
        .replace(/\(/g, '%28').replace(/\)/g, '%29') // replace opening and closing parens
        + '=' + encodeURIComponent(value)
        .replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent) // allowed special characters
        + stringifyAttributes(attributes);
}
exports.encode = encode;
function parse(cookieString) {
    var result = {};
    var cookies = cookieString ? cookieString.split('; ') : [];
    var rdecode = /(%[0-9A-Z]{2})+/g;
    for (var i = 0; i < cookies.length; i++) {
        var parts = cookies[i].split('=');
        var cookie = parts.slice(1).join('=');
        if (cookie.charAt(0) === '"') {
            cookie = cookie.slice(1, -1);
        }
        try {
            var name_1 = parts[0].replace(rdecode, decodeURIComponent);
            result[name_1] = cookie.replace(rdecode, decodeURIComponent);
        }
        catch (e) {
            // ignore cookies with invalid name/value encoding
        }
    }
    return result;
}
exports.parse = parse;
function getAll() {
    return parse(document.cookie);
}
exports.getAll = getAll;
function get(name) {
    return getAll()[name];
}
exports.get = get;
function set(name, value, attributes) {
    document.cookie = encode(name, value, __assign({ path: '/' }, attributes));
}
exports.set = set;
function remove(name, attributes) {
    set(name, '', __assign({}, attributes, { expires: -1 }));
}
exports.remove = remove;

},{}],2:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Helpers = /** @class */ (function () {
    function Helpers() {
    }
    Helpers.getHtmlElement = function (selector) {
        var elem;
        if (selector[0] === ".") {
            elem = document.getElementsByClassName(selector)[0];
        }
        else {
            var elemId = selector[0] === "#" ? selector.substr(1) : selector;
            elem = document.getElementById(elemId);
        }
        return elem;
    };
    Helpers.toDomainName = function (name) {
        var urlComp = name.replace(" ", "-");
        return urlComp;
    };
    Helpers.getQueryStringParamByName = function (name) {
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)");
        var url = window.location.href;
        var results = regex.exec(url);
        if (!results)
            return null;
        if (!results[2])
            return "";
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    };
    Helpers.removeQueryParamFromUrl = function (url, name) {
        var urlparts = url.split("?");
        if (urlparts.length >= 2) {
            var prefix = encodeURIComponent(name) + "=";
            var pars = urlparts[1].split(/[&;]/g);
            // reverse iteration as may be destructive
            for (var i = pars.length; i-- > 0;) {
                // idiom for string.startsWith
                if (pars[i].lastIndexOf(prefix, 0) !== -1) {
                    pars.splice(i, 1);
                }
            }
            url = urlparts[0] + (pars.length > 0 ? "?" + pars.join("&") : "");
            window.history.pushState({ path: url }, '', url);
            return url;
        }
        else {
            return url;
        }
    };
    Helpers.addQueryParamToUrl = function (url, name, value) {
        if (history.pushState) {
            // remove any param for the same key
            var currentUrl = Helpers.removeQueryParamFromUrl(url, name);
            // figure out if we need to add the param with a ? or a &
            var queryStart;
            if (currentUrl.indexOf("?") !== -1) {
                queryStart = "&";
            }
            else {
                queryStart = "?";
            }
            var newurl = currentUrl + queryStart + name + '=' + value;
            window.history.pushState({ path: newurl }, '', newurl);
        }
    };
    Helpers.getViewName = function (name) {
        var viewName = name;
        var url = window.location.pathname;
        if (url) {
            url = url.indexOf("/") === 0 ? url.substr(1, url.length) : url;
            url = url.lastIndexOf("/") === url.length - 1 ? url.substr(0, url.length - 1) : url;
            var urlParts = url.split("/");
            if (!viewName) {
                // NOTE: Should be an infoPagina
                var viewPath = urlParts.slice(Math.max(urlParts.length - 3, 1)).join("\\");
                viewName = viewPath;
            }
            if (urlParts.length > 1) {
                var lang = urlParts[0];
                var city = urlParts[1];
                viewName = city + " - " + viewName + " [" + lang + "]";
            }
        }
        if (!viewName) {
            viewName = "[Onbekend] " + window.location.href;
        }
        return viewName;
    };
    Helpers.toggleAriaHidden = function (selectorTrue, selectorFalse) {
        if (!selectorFalse) {
            selectorFalse = "*[aria-hidden=\"false\"]";
        }
        var ariaHiddenFalse = document.querySelectorAll(selectorFalse);
        for (var i = 0; i < ariaHiddenFalse.length; i++) {
            ariaHiddenFalse[i].setAttribute("aria-hidden", "true");
        }
        var ariaHiddenTrue = document.querySelectorAll(selectorTrue);
        for (var j = 0; j < ariaHiddenTrue.length; j++) {
            ariaHiddenTrue[j].setAttribute("aria-hidden", "false");
        }
    };
    Helpers.toggleTabIndex = function (selectorIn, selectorOut) {
        var elemTabIdxOut = document.querySelectorAll(selectorOut);
        for (var i = 0; i < elemTabIdxOut.length; i++) {
            elemTabIdxOut[i].setAttribute("tabindex", "-1");
        }
        var elemTabIdxIn = document.querySelectorAll(selectorIn);
        for (var i = 0; i < elemTabIdxIn.length; i++) {
            elemTabIdxIn[i].setAttribute("tabindex", "0");
        }
    };
    Helpers.removeClassAll = function (selector, classname) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            elements[i].classList.remove(classname);
        }
    };
    Helpers.showScrollToTopButton = function () {
        var upBtn = document.querySelector(".up");
        if (upBtn) {
            var wrapper = document.querySelector(".wrapper");
            ;
            var t = upBtn.offsetTop + (wrapper ? wrapper.offsetTop : 0);
            var h = window.innerHeight;
            if (t > h) {
                upBtn.classList.add("active");
                upBtn.setAttribute("tabindex", "0");
            }
            else {
                upBtn.classList.remove("active");
                upBtn.setAttribute("tabindex", "-1");
            }
        }
    };
    Helpers.scrollToTop = function () {
        window.scrollTo(0, 0);
    };
    Helpers.setRtl = function (val) {
        var rtlClass = "rtl";
        var rtl = document.body.classList.contains(rtlClass);
        if (val && !rtl)
            document.body.classList.add(rtlClass);
        else if (!val && rtl)
            document.body.classList.remove(rtlClass);
    };
    ;
    Helpers.setTextDirection = function () {
        var path = window.location.pathname;
        var lang = path.substr(1, 2);
        Helpers.setRtl(lang.toLowerCase() === "ar");
    };
    Helpers.share = function (title, url) {
        var result = false;
        var navigatorAsAny = navigator;
        // A. share native if available (on mobile device)
        if (navigatorAsAny.share) {
            navigatorAsAny.share({
                title: title,
                text: title,
                url: url,
            }).always(function () { return false; });
        }
        // or B: Copy the url to the clipboard
        // - create textarea, move it off screen
        var textarea = document.createElement('textarea');
        textarea.style.cssText = "position: absolute; left: -99999em";
        // - set to readonly to prevent mobile devices opening a keyboard when text is selected
        textarea.setAttribute("readonly", "true");
        // append to body and set value
        document.body.appendChild(textarea);
        textarea.value = url;
        // - check if there is any content selected previously
        var selected = document.getSelection().rangeCount > 0 ?
            document.getSelection().getRangeAt(0) : false;
        // - iOS Safari blocks programmatic execCommand copying normally, without this hack.
        // https://stackoverflow.com/questions/34045777/copy-to-clipboard-using-javascript-in-ios
        if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
            var editable = textarea.contentEditable;
            textarea.contentEditable = "true";
            var range = document.createRange();
            range.selectNodeContents(textarea);
            var sel = window.getSelection();
            sel.removeAllRanges();
            sel.addRange(range);
            textarea.setSelectionRange(0, 999999);
            textarea.contentEditable = editable;
        }
        else {
            textarea.select();
        }
        try {
            result = document.execCommand("copy");
            // - restore previous selection.
            if (selected) {
                document.getSelection().removeAllRanges();
                document.getSelection().addRange(selected);
            }
        }
        finally {
            // - cleanup the textarea
            document.body.removeChild(textarea);
            return result;
        }
    };
    return Helpers;
}());
exports.Helpers = Helpers;
},{}],3:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_helpers_1 = require("./nlapp-helpers");
var MonitoringService = /** @class */ (function () {
    function MonitoringService() {
        var _this = this;
        this.logPage = function (viewName) {
            var pageUrl = window.location.href;
            var pageName = nlapp_helpers_1.Helpers.getViewName(viewName);
            _this.logPageView(pageName, pageUrl);
        };
        this.logChapter = function (chapter) {
            var pageName = chapter.getAttribute("data-name");
            pageName = nlapp_helpers_1.Helpers.getViewName(pageName);
            var pageUrl = chapter.getAttribute("data-url");
            _this.logPageView(pageName, pageUrl);
        };
        this.logInternalLink = function (chapter) {
            var pageName = chapter.getAttribute("data-name");
            pageName = nlapp_helpers_1.Helpers.getViewName(pageName);
            var pageUrl = chapter.getAttribute("data-url");
            var fromUrl = nlapp_helpers_1.Helpers.getQueryStringParamByName("from");
            _this.logPageView(pageName, pageUrl, fromUrl ? { fromUrl: fromUrl } : null);
        };
        this.logExternalLink = function (url) {
            _this.logEvent("ExternalLink", { externalUrl: url });
        };
        this.logShareLink = function (url) {
            _this.logEvent("ShareLink", { shareUrl: url });
        };
        this.logServiceWorker = function (action, succes) {
            _this.logEvent("Service worker", { action: action, succes: succes });
        };
        this.logPageView = function (name, url, properties, measurements, duration) {
            if (window.appInsights && navigator && navigator.onLine) {
                window.appInsights.trackPageView(name, url, properties, measurements, duration);
            }
        };
        this.logEvent = function (name, properties, measurements) {
            if (window.appInsights && navigator && navigator.onLine) {
                window.appInsights.trackEvent(name, properties, measurements);
            }
        };
    }
    return MonitoringService;
}());
exports.MonitoringService = MonitoringService;
},{"./nlapp-helpers":2}],4:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_monitoring_service_1 = require("./nlapp-monitoring.service");
var PwaInstaller = /** @class */ (function () {
    function PwaInstaller(installContainerId, installBtnId) {
        var _this = this;
        this.initial = true;
        this.init = function () {
            if ("serviceWorker" in navigator) {
                var scopeFromPath = _this.getScopeFromPathName(window.location.pathname);
                window.addEventListener("load", function () {
                    navigator.serviceWorker
                        .register("service-worker.js", { scope: scopeFromPath })
                        .then(function (reg) {
                        // registered
                        if (navigator.serviceWorker.controller) {
                            _this.serviceworker.postMessage({ action: "clearFiles" });
                        }
                        reg.onupdatefound = function () {
                            // An updated service worker has appeared in reg.installing!
                            _this.serviceworker = reg.installing;
                            _this.serviceworker.onstatechange = function () {
                                // Has service worker state changed?
                                switch (_this.serviceworker.state) {
                                    case "installed":
                                        // There is a new service worker available, automatically update the service worker
                                        if (navigator.serviceWorker.controller) {
                                            _this.serviceworker.postMessage({ action: "skipWaiting" });
                                        }
                                        break;
                                }
                            };
                        };
                    }).catch(function (err) {
                        // registration error
                    });
                });
                var installer_1 = _this;
                if (_this.isPwaInstalled()) {
                    installer_1.showIsInstalledButton();
                }
                else {
                    installer_1.hideInstallButton();
                    window.addEventListener("beforeinstallprompt", function (e) {
                        // prevent from automatically showing the prompt
                        e.preventDefault();
                        // stash the event so it can be triggered later
                        installer_1.deferredPrompt = e;
                        // update UI notify the user they can add to home screen
                        installer_1.showInstallButton();
                    });
                    window.addEventListener("appinstalled", function () {
                        installer_1.showIsInstalledButton();
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Application installed", true);
                        window.location.reload();
                    });
                }
            }
            else {
                // not supported
                _this.hideInstallButton();
            }
        };
        this.isPwaInstalled = function () {
            return ("serviceWorker" in navigator) && navigator.serviceWorker.controller && navigator.serviceWorker.controller.state === "activated" && window.matchMedia('(display-mode: standalone)').matches;
        };
        this.getScopeFromPathName = function (pathName) {
            if (pathName)
                return pathName.split("/", 3).join("/");
            return pathName;
        };
        this.showIsInstalledButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("active");
                _this.installContainer.classList.add("installed");
                _this.installButton.removeEventListener("click", _this.installApp, true);
                _this.initial = false;
            }
        };
        this.showInstallButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("installed");
                _this.installContainer.classList.add("active");
                _this.installButton.addEventListener("click", _this.installApp, true);
                _this.initial = false;
            }
        };
        this.hideInstallButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("installed");
                _this.installContainer.classList.remove("active");
                _this.installButton.removeEventListener("click", _this.installApp, true);
            }
        };
        this.installApp = function (evt) {
            evt.preventDefault();
            if (!navigator.onLine) {
                return;
            }
            var prompt = _this.deferredPrompt;
            if (prompt) {
                // show the prompt
                prompt.prompt();
                // wait for the user to respond to the prompt
                _this.deferredPrompt.userChoice
                    .then(function (choiceResult) {
                    if (choiceResult.outcome === "accepted") {
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Installation accepted", true);
                    }
                    else {
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Installation rejected", false);
                    }
                    prompt = null;
                });
            }
        };
        this.installContainer = document.getElementById(installContainerId);
        this.installButton = document.getElementById(installBtnId);
    }
    return PwaInstaller;
}());
exports.PwaInstaller = PwaInstaller;
},{"./nlapp-monitoring.service":3}],5:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Cookies = require("es-cookie");
var nlapp_helpers_1 = require("./nlapp-helpers");
var UserSettings = /** @class */ (function () {
    function UserSettings() {
        this.cookieLanguageKey = "lang";
        this.cookieTownKey = "town";
        this.cookieSplashViewedKey = "splvwd";
        this.cookieCookieConsentAcceptedKey = "ccAccepted";
        this.cookieDisclaimerAcceptedKey = "disclaimerAccepted";
    }
    Object.defineProperty(UserSettings.prototype, "language", {
        get: function () { return Cookies.get(this.cookieLanguageKey); },
        set: function (val) {
            if (val)
                Cookies.set(this.cookieLanguageKey, val, { expires: 1000, secure: true });
            else
                Cookies.remove(this.cookieLanguageKey);
        },
        enumerable: true,
        configurable: true
    });
    ;
    ;
    Object.defineProperty(UserSettings.prototype, "town", {
        get: function () { return Cookies.get(this.cookieTownKey); },
        set: function (val) {
            if (val) {
                this.splashViewed = false;
                Cookies.set(this.cookieTownKey, val, { expires: 1000, secure: true });
            }
            else {
                Cookies.remove(this.cookieTownKey);
            }
        },
        enumerable: true,
        configurable: true
    });
    ;
    ;
    Object.defineProperty(UserSettings.prototype, "splashViewed", {
        get: function () { return Cookies.get(this.cookieSplashViewedKey) === "1"; },
        set: function (val) {
            Cookies.set(this.cookieSplashViewedKey, val ? "1" : "0", { expires: 1000, secure: true });
        },
        enumerable: true,
        configurable: true
    });
    ;
    ;
    Object.defineProperty(UserSettings.prototype, "cookieConsentAccepted", {
        get: function () { return Cookies.get(this.cookieCookieConsentAcceptedKey) === "1"; },
        set: function (val) {
            Cookies.set(this.cookieCookieConsentAcceptedKey, val ? "1" : "0", { expires: 1000, secure: true });
        },
        enumerable: true,
        configurable: true
    });
    ;
    ;
    Object.defineProperty(UserSettings.prototype, "disclaimerAccepted", {
        get: function () { return Cookies.get(this.cookieDisclaimerAcceptedKey) === "1"; },
        set: function (val) {
            Cookies.set(this.cookieDisclaimerAcceptedKey, val ? "1" : "0", { expires: 1000, secure: true });
        },
        enumerable: true,
        configurable: true
    });
    ;
    ;
    UserSettings.prototype.isValid = function () {
        return this.language != undefined && this.town != undefined;
    };
    UserSettings.prototype.toHomeUrl = function () {
        var protocol = window.location.protocol;
        var host = window.location.host;
        var url = protocol + "//" + host + this.toPathName();
        return url.toLowerCase();
    };
    UserSettings.prototype.toPathName = function () {
        var pathName = this.isValid() ? "/" + this.language + "/" + nlapp_helpers_1.Helpers.toDomainName(this.town) : "";
        return pathName.toLowerCase();
    };
    return UserSettings;
}());
exports.UserSettings = UserSettings;
},{"./nlapp-helpers":2,"es-cookie":1}],6:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var Html404View = /** @class */ (function (_super) {
    __extends(Html404View, _super);
    function Html404View(monitoring, userSettings, viewName) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this._viewName = viewName;
        return _this;
    }
    Html404View.prototype.viewName = function () {
        return this._viewName;
    };
    Html404View.prototype.init = function () {
        _super.prototype.init.call(this);
    };
    Html404View.prototype.load = function () {
        _super.prototype.load.call(this);
    };
    return Html404View;
}(nlapp_view_1.ViewBase));
exports.Html404View = Html404View;
},{"./nlapp-view":13}],7:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var CategorieView = /** @class */ (function (_super) {
    __extends(CategorieView, _super);
    function CategorieView(monitoring, userSettings) {
        return _super.call(this, monitoring, userSettings) || this;
    }
    CategorieView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    CategorieView.prototype.viewName = function () {
        return this._contentViewName || "List";
    };
    CategorieView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnClick(".back", this.navigateBack);
        this.bindOnArrowRight(this.navigateActiveElement);
    };
    CategorieView.prototype.load = function () {
        _super.prototype.load.call(this);
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    CategorieView.prototype.navigateBack = function (evt) {
        if (evt && evt.currentTarget) {
            evt.preventDefault();
            evt.stopPropagation();
            document.body.classList.add("home");
            document.body.classList.add("leaving");
            document.body.classList.remove("cat-1");
            document.body.classList.remove("cat-2");
            document.body.classList.remove("cat-3");
            document.body.classList.remove("cat-4");
            document.body.classList.remove("cat-5");
            document.body.classList.remove("cat-6");
            var url_1 = evt.currentTarget.getAttribute("href");
            setTimeout(function () {
                window.location.href = url_1;
            }, 500);
        }
    };
    return CategorieView;
}(nlapp_view_1.ViewBase));
exports.CategorieView = CategorieView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],8:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var HomeView = /** @class */ (function (_super) {
    __extends(HomeView, _super);
    function HomeView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this.storeSettings = function (evt) {
            if (evt && evt.currentTarget) {
                evt.preventDefault();
                var elem = evt.currentTarget;
                var language = elem.getAttribute("data-language");
                var town = elem.getAttribute("data-town");
                // store user settings
                if (language && _this.userSettings.language !== language) {
                    // store language
                    _this.userSettings.language = language;
                    // set active language
                    nlapp_helpers_1.Helpers.removeClassAll("#language button", "active");
                    elem.classList.add("active");
                    // show town panel
                    var languageDivs = document.querySelectorAll("#town .lang");
                    for (var i = 0; i < languageDivs.length; i++) {
                        languageDivs[i].classList.remove("active");
                        if (languageDivs[i].classList.contains(language)) {
                            languageDivs[i].classList.add("active");
                        }
                    }
                }
                if (town && _this.userSettings.town !== town) {
                    // store town
                    _this.userSettings.town = town;
                    // set active town
                    var languageAnchors = document.querySelectorAll("#town .lang a");
                    for (var i = 0; i < languageAnchors.length; i++) {
                        languageAnchors[i].classList.remove("active");
                        if (languageAnchors[i].getAttribute("data-town") === town) {
                            languageAnchors[i].classList.add("active");
                        }
                    }
                }
            }
        };
        _this.toggleMenu = function (evt) {
            var settingsPanel = document.getElementsByClassName("settings")[0];
            var settingsActive = settingsPanel.classList.contains("active");
            var currectUrl = window.location.pathname;
            var newUrl = _this.userSettings.toPathName();
            if (settingsActive && (currectUrl !== newUrl)) {
                _this.goHome();
                return;
            }
            // toggle classes
            settingsPanel.classList.toggle("active");
            document.body.classList.toggle("menuopen");
            if (settingsActive) {
                nlapp_helpers_1.Helpers.removeQueryParamFromUrl(window.location.href, "settings");
            }
            else {
                nlapp_helpers_1.Helpers.addQueryParamToUrl(window.location.href, "settings", "1");
            }
            // toggle aria-expanded
            var menu = document.getElementById("menu");
            var menuAriaExpanded = menu.getAttribute("aria-expanded") === "true";
            menu.setAttribute("aria-expanded", menuAriaExpanded ? "false" : "true");
            // toggle aria-hidden
            document.querySelector("main").setAttribute("aria-hidden", menuAriaExpanded ? "false" : "true");
            document.querySelector("header").setAttribute("aria-hidden", menuAriaExpanded ? "false" : "true");
            settingsPanel.setAttribute("aria-hidden", menuAriaExpanded ? "true" : "false");
            // create keyboard trap
            if (!menuAriaExpanded) {
                // to popup
                nlapp_helpers_1.Helpers.toggleTabIndex(".settings, .settings a, .settings .menu", "header input, header button, main a");
                setTimeout(function () { document.querySelector(".settings").focus(); }, 500);
            }
            else {
                // to page
                nlapp_helpers_1.Helpers.toggleTabIndex("header input, header button, main a", ".settings, .settings a, .settings .menu");
                setTimeout(function () { document.querySelector("main").focus(); }, 500);
            }
        };
        _this.closeMenu = function (evt) {
            if (document.body.classList.contains("menuopen")) {
                _this.toggleMenu(null);
            }
        };
        _this.popupLanguage = function (evt) {
            evt.preventDefault();
            var isOffline = !!document.querySelector("body.offline");
            if (isOffline) {
                return;
            }
            _this.closePopup(null);
            var popup = document.querySelector(".popup.language");
            if (popup) {
                document.getElementById("popupbg").classList.add("active");
                popup.classList.add("active");
                nlapp_helpers_1.Helpers.toggleTabIndex(".popup.language.active a, .popup.language.active .close", ".settings, .settings a, .popup.town a, .popup.town .close");
                setTimeout(function () { document.querySelector(".popup.language.active li a.active").focus(); }, 500);
            }
        };
        _this.popupTown = function (evt) {
            evt.preventDefault();
            var isOffline = !!document.querySelector("body.offline");
            if (isOffline) {
                return;
            }
            _this.closePopup(null);
            var popup = document.querySelector(".popup.town");
            if (popup) {
                document.getElementById("popupbg").classList.add("active");
                popup.classList.add("active");
                nlapp_helpers_1.Helpers.toggleTabIndex(".popup.town.active a, .popup.town.active .close", ".settings, .settings a, .popup.language a, .popup.language .close");
                setTimeout(function () { document.querySelector(".popup.town.active li a.active").focus(); }, 500);
            }
        };
        _this.closePopup = function (evt) {
            var activePopup = document.querySelector(".popup.active");
            if (!activePopup) {
                return;
            }
            var isLanguagePopup = activePopup.classList.contains("language");
            activePopup.classList.remove("active");
            nlapp_helpers_1.Helpers.toggleTabIndex(".settings, .settings a", ".popup.active a");
            // hide background
            document.getElementById("popupbg").classList.remove("active");
            // focus previous selected item
            setTimeout(function () { document.getElementById(isLanguagePopup ? "language" : "town").focus(); }, 500);
        };
        _this.closePopupOrSettingsPanel = function () {
            var activePopup = document.querySelector(".popup.active");
            if (activePopup) {
                _this.closePopup(null);
                return;
            }
            _this.closeMenu(null);
        };
        _this.redirectToHome = function (evt) {
            if (evt && evt.currentTarget) {
                evt.preventDefault();
                var elem = evt.currentTarget;
                if (elem.classList.contains("active")) {
                    // already active, no navigation
                    return;
                }
                // store user settings
                var language = elem.getAttribute("data-language");
                var town = elem.getAttribute("data-town");
                var prevSelection = document.querySelector(".popup.active a.active");
                prevSelection.classList.remove("active");
                elem.classList.add("active");
                if (language)
                    _this.userSettings.language = language;
                if (town)
                    _this.userSettings.town = town;
                if (_this.userSettings.isValid()) {
                    var url_1 = _this.userSettings.toHomeUrl();
                    setTimeout(function () {
                        _this.closePopup(null);
                        window.location.href = url_1 + "?settings=1";
                    }, 400);
                }
            }
        };
        _this.highlightCategory = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                nlapp_helpers_1.Helpers.removeClassAll(".categories ul li", "active");
                elem.parentElement.classList.add("active");
            }
        };
        _this.goHome = function () {
            if (_this.userSettings.isValid()) {
                var url = _this.userSettings.toHomeUrl();
                window.location.href = url;
            }
        };
        _this.selectPreviousListItem = function () {
            var listItems = document.querySelectorAll(".popup.active a");
            var idx = listItems.length + 1;
            for (var i = 0; i < listItems.length; i++) {
                if (listItems[i] === document.activeElement) {
                    idx = i;
                    break;
                }
            }
            var prev = idx - 1;
            if (prev < 0) {
                prev = listItems.length;
            }
            listItems[prev].focus();
        };
        _this.selectNextListItem = function () {
            var listItems = document.querySelectorAll(".popup.active a");
            var idx = -1;
            for (var i = 0; i < listItems.length; i++) {
                if (listItems[i] === document.activeElement) {
                    idx = i;
                    break;
                }
            }
            var next = idx + 1;
            if (next > listItems.length) {
                next = 0;
            }
            listItems[next].focus();
        };
        return _this;
    }
    HomeView.prototype.viewName = function () {
        return "Home";
    };
    HomeView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick("#language", this.popupLanguage);
        this.bindOnClick("#town", this.popupTown);
        this.bindOnClick(".menu", this.toggleMenu);
        this.bindOnEnter(".menu", this.toggleMenu);
        this.bindOnClick(".popup .close", this.closePopup);
        this.bindOnEnter(".popup .close", this.closePopup);
        this.bindOnEscape(this.closePopupOrSettingsPanel);
        this.bindOnClick(".popup a", this.redirectToHome);
        this.bindOnClick(".wrapper", this.closeMenu);
        this.bindOnClick(".categories ul li a", this.openCategory);
        this.bindOnMouseDown(".categories ul li a", this.highlightCategory);
        this.bindOnTouchStart(".categories ul li a", this.highlightCategory);
        this.bindOnArrowUp(this.selectPreviousListItem);
        this.bindOnArrowDown(this.selectNextListItem);
    };
    HomeView.prototype.load = function () {
        _super.prototype.load.call(this);
        this.showSplash();
    };
    HomeView.prototype.showSplash = function () {
        if (this.userSettings.splashViewed) {
            document.getElementById("splash").classList.add("shown");
        }
        this.userSettings.splashViewed = true;
    };
    HomeView.prototype.openCategory = function (evt) {
        if (evt && evt.currentTarget) {
            evt.preventDefault();
            evt.stopPropagation();
            document.body.classList.add("leaving");
            var cat = evt.currentTarget.parentElement.classList[0];
            document.body.classList.add(cat);
            var url_2 = evt.currentTarget.getAttribute("href");
            setTimeout(function () {
                window.location.href = url_2;
            }, 400);
        }
    };
    return HomeView;
}(nlapp_view_1.ViewBase));
exports.HomeView = HomeView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],9:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var KaartView = /** @class */ (function (_super) {
    __extends(KaartView, _super);
    function KaartView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this.shareUrl = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                if (elem.tagName !== "A") {
                    elem = elem.parentElement;
                }
                evt.preventDefault();
                evt.stopPropagation();
                var shareTitle = elem.getAttribute("data-title");
                var shareUrl = elem.getAttribute("data-url");
                if (!shareUrl) {
                    return false;
                }
                elem.classList.add("active");
                // send logEvent to AppInsights
                _this.monitoringSvc.logShareLink(shareUrl.replace(window.location.origin, ""));
                return nlapp_helpers_1.Helpers.share(shareTitle, shareUrl);
            }
        };
        return _this;
    }
    KaartView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    KaartView.prototype.viewName = function () {
        return this._contentViewName || "Kaart";
    };
    KaartView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".share", this.shareUrl);
    };
    KaartView.prototype.load = function () {
        _super.prototype.load.call(this);
    };
    return KaartView;
}(nlapp_view_1.ViewBase));
exports.KaartView = KaartView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],10:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var OnderwerpView = /** @class */ (function (_super) {
    __extends(OnderwerpView, _super);
    function OnderwerpView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this.chapterClick = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                // normal navigation for links within chapters
                if (elem.tagName === "A") {
                    return;
                }
                evt.preventDefault();
                if (!elem.classList.contains("chapter")) {
                    elem = elem.parentElement;
                }
                _this.toggleChapter(elem);
            }
        };
        _this.openChapterById = function () {
            var id = nlapp_helpers_1.Helpers.getQueryStringParamByName("id");
            if (!id) {
                _this.logPageView();
            }
            var chapter = document.querySelector(".chapter[data-id='" + id + "']");
            if (!chapter)
                return;
            chapter.scrollIntoView();
            chapter.classList.add("active");
            // send trackPageView to AppInsights
            _this.monitoringSvc.logInternalLink(chapter);
        };
        _this.openExtLink = function (evt) {
            if (evt && evt.currentTarget) {
                evt.preventDefault();
                evt.stopPropagation();
                var elem = evt.currentTarget;
                var url = elem.getAttribute("href");
                // send logEvent to AppInsights
                _this.monitoringSvc.logExternalLink(url);
                // open the link in a new window
                window.open(url, '_blank');
            }
        };
        _this.shareUrl = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                if (elem.tagName !== "A") {
                    elem = elem.parentElement;
                }
                evt.preventDefault();
                evt.stopPropagation();
                var shareTitle = elem.getAttribute("data-title");
                var shareUrl = elem.getAttribute("data-url");
                if (!shareUrl) {
                    return false;
                }
                elem.classList.add("active");
                // send logEvent to AppInsights
                _this.monitoringSvc.logShareLink(shareUrl.replace(window.location.origin, ""));
                return nlapp_helpers_1.Helpers.share(shareTitle, shareUrl);
            }
        };
        _this.toggleChapter = function (chapterElem) {
            var isOpen = chapterElem.classList.contains("active");
            if (!isOpen) {
                chapterElem.classList.add("active");
                // send trackPageView to AppInsights
                _this.monitoringSvc.logChapter(chapterElem);
            }
            else {
                chapterElem.classList.remove("active");
            }
            nlapp_helpers_1.Helpers.showScrollToTopButton();
            // set tabindexes
            nlapp_helpers_1.Helpers.toggleTabIndex(".chapter.active a", ".chapter:not(.active) a");
        };
        _this.openChapter = function () {
            var activeElem = document.activeElement;
            if (activeElem && activeElem.tagName === "H2") {
                var chapterElem = activeElem.parentElement;
                var isOpen = chapterElem.classList.contains("active");
                if (!isOpen) {
                    _this.toggleChapter(chapterElem);
                }
            }
        };
        _this.closeChapter = function () {
            var activeElem = document.activeElement;
            if (activeElem && activeElem.tagName === "H2") {
                var chapterElem = activeElem.parentElement;
                var isOpen = chapterElem.classList.contains("active");
                if (isOpen) {
                    _this.toggleChapter(chapterElem);
                }
            }
        };
        return _this;
    }
    OnderwerpView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    OnderwerpView.prototype.viewName = function () {
        return this._contentViewName || "Detail";
    };
    OnderwerpView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".clickarea", this.chapterClick);
        this.bindOnEnter(".chapter", this.toggleChapter);
        this.bindOnArrowLeft(this.closeChapter);
        this.bindOnArrowRight(this.openChapter);
        this.bindOnClick(".share", this.shareUrl);
        this.bindOnClick(".external", this.openExtLink);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
    };
    OnderwerpView.prototype.load = function () {
        _super.prototype.load.call(this);
        this.openChapterById();
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    return OnderwerpView;
}(nlapp_view_1.ViewBase));
exports.OnderwerpView = OnderwerpView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],11:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var WelkomView = /** @class */ (function (_super) {
    __extends(WelkomView, _super);
    function WelkomView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this.showStep1 = function (evt) {
            if (evt && evt.currentTarget) {
                _this.goBack();
            }
        };
        _this.showStep2 = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                _this.gotoStep2(elem);
            }
        };
        _this.redirectToHome = function (evt) {
            if (evt && evt.currentTarget) {
                evt.preventDefault();
                // store user settings
                var elem = evt.currentTarget;
                _this.gotoHome(elem);
            }
        };
        _this.tryForwardToHome = function () {
            if (_this.userSettings.isValid()) {
                var url = _this.userSettings.toHomeUrl();
                window.location.href = url;
            }
        };
        _this.acceptDisclaimers = function (evt) {
            if (evt && evt.currentTarget) {
                var divDisclaimer = document.querySelector(".disclaimer.active");
                divDisclaimer.classList.remove("active");
                _this.userSettings.cookieConsentAccepted = true;
                _this.userSettings.disclaimerAccepted = true;
            }
        };
        _this.selectPreviousListItem = function () {
            var selector = document.body.classList.contains("step2") ? "#town .lang.active a" : "#language button";
            var listItems = document.querySelectorAll(selector);
            var idx = listItems.length + 1;
            for (var i = 0; i < listItems.length; i++) {
                if (listItems[i] === document.activeElement) {
                    idx = i;
                    break;
                }
            }
            var prev = idx - 1;
            if (prev < 0) {
                prev = listItems.length;
            }
            listItems[prev].focus();
        };
        _this.selectNextListItem = function () {
            var selector = document.body.classList.contains("step2") ? "#town .lang.active a" : "#language button";
            var listItems = document.querySelectorAll(selector);
            var idx = -1;
            for (var i = 0; i < listItems.length; i++) {
                if (listItems[i] === document.activeElement) {
                    idx = i;
                    break;
                }
            }
            var next = idx + 1;
            if (next > listItems.length) {
                next = 0;
            }
            listItems[next].focus();
        };
        _this.showNextStep = function () {
            var isStep2 = document.body.classList.contains("step2");
            if (isStep2) {
                _this.gotoHome(document.activeElement);
            }
            else {
                _this.gotoStep2(document.activeElement);
            }
        };
        _this.gotoStep2 = function (elem) {
            if (elem) {
                nlapp_helpers_1.Helpers.removeClassAll(".disclaimer", "active");
                nlapp_helpers_1.Helpers.removeClassAll("#town .lang", "active");
                nlapp_helpers_1.Helpers.removeClassAll("#language button", "active");
                elem.classList.add("active");
                var body = document.getElementsByTagName("body")[0];
                body.classList.add("step2");
                var language_1 = elem.getAttribute("data-language");
                var divLanguage_1 = document.querySelector(".lang." + language_1);
                divLanguage_1.classList.add("active");
                if (!_this.userSettings.cookieConsentAccepted || !_this.userSettings.disclaimerAccepted) {
                    var divDisclaimer = document.querySelector(".disclaimer." + language_1);
                    divDisclaimer.classList.add("active");
                }
                // toggle aria-hidden
                nlapp_helpers_1.Helpers.toggleAriaHidden(".lang.active, .disclaimer.active, #town");
                // toggle tab indexes
                nlapp_helpers_1.Helpers.toggleTabIndex("#town a, .back", "#language button");
                // set focus
                setTimeout(function () {
                    nlapp_helpers_1.Helpers.setRtl(language_1.substr(0, 2).toLowerCase() === "ar");
                    divLanguage_1.querySelector("a").focus();
                }, 1000);
            }
        };
        _this.gotoHome = function (elem) {
            if (elem) {
                elem.classList.add("active");
                var language = elem.getAttribute("data-language");
                var town = elem.getAttribute("data-town");
                _this.userSettings.language = language;
                _this.userSettings.town = town;
                if (_this.userSettings.isValid()) {
                    _this.userSettings.disclaimerAccepted = true;
                    _this.userSettings.cookieConsentAccepted = true;
                    var url_1 = _this.userSettings.toHomeUrl();
                    setTimeout(function () {
                        window.location.href = url_1;
                    }, 800);
                }
            }
        };
        _this.goBack = function () {
            var body = document.getElementsByTagName("body")[0];
            body.classList.remove("step2");
            // toggle aria-hidden
            nlapp_helpers_1.Helpers.toggleAriaHidden("#language");
            // toggle tab indexes
            nlapp_helpers_1.Helpers.toggleTabIndex("#language button", "#town a, .back");
            // set focus
            var elemFocus = document.querySelector("#language button.active");
            setTimeout(function () {
                nlapp_helpers_1.Helpers.setRtl(false);
                elemFocus.focus();
            }, 400);
        };
        return _this;
    }
    WelkomView.prototype.viewName = function () {
        return "Welkom";
    };
    WelkomView.prototype.init = function () {
        _super.prototype.init.call(this);
        // redirect to home page if language and city are already selected
        this.tryForwardToHome();
        this.bindOnClick(".back", this.showStep1);
        this.bindOnClick("#language button", this.showStep2);
        this.bindOnClick(".lang a", this.redirectToHome);
        this.bindOnClick(".close-disclaimer", this.acceptDisclaimers);
        this.bindOnArrowLeft(this.goBack);
        this.bindOnEnter(".back", this.showStep1);
        this.bindOnArrowUp(this.selectPreviousListItem);
        this.bindOnArrowDown(this.selectNextListItem);
        this.bindOnArrowRight(this.showNextStep);
    };
    WelkomView.prototype.load = function () {
        _super.prototype.load.call(this);
    };
    return WelkomView;
}(nlapp_view_1.ViewBase));
exports.WelkomView = WelkomView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],12:[function(require,module,exports){
"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var ZoekResultatenView = /** @class */ (function (_super) {
    __extends(ZoekResultatenView, _super);
    function ZoekResultatenView(monitoring, userSettings) {
        return _super.call(this, monitoring, userSettings) || this;
    }
    ZoekResultatenView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    ZoekResultatenView.prototype.viewName = function () {
        return this._contentViewName || "Zoekresultaten";
    };
    ZoekResultatenView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
    };
    ZoekResultatenView.prototype.load = function () {
        _super.prototype.load.call(this);
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    return ZoekResultatenView;
}(nlapp_view_1.ViewBase));
exports.ZoekResultatenView = ZoekResultatenView;
},{"./nlapp-helpers":2,"./nlapp-view":13}],13:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_pwa_1 = require("./nlapp-pwa");
var ViewBase = /** @class */ (function () {
    function ViewBase(monitoring, userSettings) {
        var _this = this;
        this.lastScrollTop = 0;
        this.delta = 5;
        this.logPageView = function (pageName) {
            // send trackPageView to AppInsights
            _this.monitoringSvc.logPage(pageName);
        };
        this.monitoringSvc = monitoring;
        this.userSettings = userSettings;
        this.pwaInstaller = new nlapp_pwa_1.PwaInstaller("pwaContent", "installPwa");
    }
    ViewBase.prototype.init = function () {
        this.pwaInstaller.init();
    };
    ;
    ViewBase.prototype.load = function () {
        var _this = this;
        this.logPageView(this.viewName());
        this.addSearchInputAnimation();
        this.attachSearchFormHandlers();
        window.addEventListener("scroll", function () {
            _this.didScroll = true;
        });
        setInterval(function () {
            if (_this.didScroll) {
                _this.hasScrolled();
                _this.didScroll = false;
            }
        }, 250);
    };
    ViewBase.prototype.bindOnKeyDown = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("keydown", method, true);
            }
        }
    };
    ViewBase.prototype.bindOnEnter = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("keydown", function (evt) {
                    if (evt && evt.keyCode === 13) {
                        var elem = evt.currentTarget;
                        method(elem);
                    }
                }, true);
            }
        }
    };
    ViewBase.prototype.bindOnEscape = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 27) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowUp = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 38) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowDown = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 40) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowRight = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 39) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowLeft = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 37) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnClick = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("click", method, true);
            }
        }
    };
    ViewBase.prototype.bindOnTouchStart = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                var options = {};
                options.passive = true;
                options.capture = true;
                elements[i].addEventListener("touchstart", method, options);
            }
        }
    };
    ViewBase.prototype.bindOnMouseDown = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("mousedown", method, true);
            }
        }
    };
    ViewBase.prototype.navigateActiveElement = function () {
        if (document.activeElement) {
            var href = document.activeElement.getAttribute("href");
            if (href) {
                window.location.href = href;
            }
        }
    };
    ViewBase.prototype.addSearchInputAnimation = function () {
        var searchInput = document.querySelector(".search input");
        if (searchInput) {
            searchInput.addEventListener("focusin", function () {
                document.body.classList.add("searching");
            }, false);
            searchInput.addEventListener("focusout", function () {
                setTimeout(function () {
                    document.body.classList.remove("searching");
                }, 200);
            }, false);
        }
    };
    ViewBase.prototype.hasScrolled = function () {
        if (document.body.classList.contains("searching")) {
            return;
        }
        if (document.scrollingElement) {
            var st = document.scrollingElement.scrollTop;
            if (Math.abs(this.lastScrollTop - st) <= this.delta)
                return;
            if (st > this.lastScrollTop && st > 120) {
                document.body.classList.add("scrolling");
            }
            else {
                // Scroll Up
                if (st + window.innerHeight < document.body.clientHeight) {
                    document.body.classList.remove("scrolling");
                }
            }
            this.lastScrollTop = st;
        }
    };
    ViewBase.prototype.attachSearchFormHandlers = function () {
        var searchInput = document.querySelector("#searchform input");
        if (searchInput) {
            searchInput.addEventListener("change", this.enableSearchSubmit, true);
        }
    };
    ViewBase.prototype.enableSearchSubmit = function (evt) {
        if (evt && evt.currentTarget) {
            var enable = evt.currentTarget.value !== "";
            var searchSubmit = document.querySelector("#searchform button[type='submit']");
            if (searchSubmit) {
                searchSubmit.disabled = !enable;
                searchSubmit.setAttribute("aria-disabled", enable ? "false" : "true");
            }
        }
    };
    return ViewBase;
}());
exports.ViewBase = ViewBase;
},{"./nlapp-pwa":4}],14:[function(require,module,exports){
"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_usersettings_1 = require("./nlapp-usersettings");
var nlapp_monitoring_service_1 = require("./nlapp-monitoring.service");
var nlapp_view_home_1 = require("./nlapp-view-home");
var nlapp_view_welkom_1 = require("./nlapp-view-welkom");
var nlapp_view_categorie_1 = require("./nlapp-view-categorie");
var nlapp_view_onderwerp_1 = require("./nlapp-view-onderwerp");
var nlapp_view_kaart_1 = require("./nlapp-view-kaart");
var nlapp_view_zoeken_1 = require("./nlapp-view-zoeken");
var nlapp_view_404_1 = require("./nlapp-view-404");
var nlapp_helpers_1 = require("./nlapp-helpers");
var NLapp = /** @class */ (function () {
    function NLapp() {
        this.monitoringSvc = new nlapp_monitoring_service_1.MonitoringService();
        this.userSettings = new nlapp_usersettings_1.UserSettings();
        // views
        this.welkom = new nlapp_view_welkom_1.WelkomView(this.monitoringSvc, this.userSettings);
        this.home = new nlapp_view_home_1.HomeView(this.monitoringSvc, this.userSettings);
        this.categorie = new nlapp_view_categorie_1.CategorieView(this.monitoringSvc, this.userSettings);
        this.onderwerp = new nlapp_view_onderwerp_1.OnderwerpView(this.monitoringSvc, this.userSettings);
        this.kaart = new nlapp_view_kaart_1.KaartView(this.monitoringSvc, this.userSettings);
        this.zoeken = new nlapp_view_zoeken_1.ZoekResultatenView(this.monitoringSvc, this.userSettings);
        this.html404 = new nlapp_view_404_1.Html404View(this.monitoringSvc, this.userSettings, "Html404");
        nlapp_helpers_1.Helpers.setTextDirection();
    }
    return NLapp;
}());
Object.defineProperty(window, "nlapp", { value: new NLapp() });
},{"./nlapp-helpers":2,"./nlapp-monitoring.service":3,"./nlapp-usersettings":5,"./nlapp-view-404":6,"./nlapp-view-categorie":7,"./nlapp-view-home":8,"./nlapp-view-kaart":9,"./nlapp-view-onderwerp":10,"./nlapp-view-welkom":11,"./nlapp-view-zoeken":12}]},{},[14])
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm5vZGVfbW9kdWxlcy9icm93c2VyLXBhY2svX3ByZWx1ZGUuanMiLCJub2RlX21vZHVsZXMvZXMtY29va2llL3NyYy9lcy1jb29raWUuanMiLCJ0cy9ubGFwcC1oZWxwZXJzLnRzIiwidHMvbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlLnRzIiwidHMvbmxhcHAtcHdhLnRzIiwidHMvbmxhcHAtdXNlcnNldHRpbmdzLnRzIiwidHMvbmxhcHAtdmlldy00MDQudHMiLCJ0cy9ubGFwcC12aWV3LWNhdGVnb3JpZS50cyIsInRzL25sYXBwLXZpZXctaG9tZS50cyIsInRzL25sYXBwLXZpZXcta2FhcnQudHMiLCJ0cy9ubGFwcC12aWV3LW9uZGVyd2VycC50cyIsInRzL25sYXBwLXZpZXctd2Vsa29tLnRzIiwidHMvbmxhcHAtdmlldy16b2VrZW4udHMiLCJ0cy9ubGFwcC12aWV3LnRzIiwidHMvbmxhcHAudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7QUNBQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUM5RUMsWUFBWSxDQUFDOztBQUNkO0lBQUE7SUE4T0EsQ0FBQztJQTdPVSxzQkFBYyxHQUFy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TUFBTSxDQUFDLENBQUM7U0FDMUQ7UUFFRCxJQUFNLGNBQWMsR0FBRyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDL0QsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLGNBQWMsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDNUMsY0FBYyxDQUFDLENBQUMsQ0FBQyxDQUFDLFlBQVksQ0FBQyxhQUFhLEVBQUUsT0FBTyxDQUFDLENBQUM7U0FDMUQ7SUFDTCxDQUFDO0lBRU0sc0JBQWMsR0FBckIsVUFBc0IsVUFBa0IsRUFBRSxXQUFtQjtRQUV6RCxJQUFNLGFBQWEsR0FBRyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDN0QsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLGFBQWEsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDM0MsYUFBYSxDQUFDLENBQUMsQ0FBQyxDQUFDLFlBQVksQ0FBQyxVQUFVLEVBQUUsSUFBSSxDQUFDLENBQUM7U0FDbkQ7UUFFRCxJQUFNLFlBQVksR0FBRyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDM0QsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFlBQVksQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDMUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDLFlBQVksQ0FBQyxVQUFVLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDakQ7SUFDTCxDQUFDO0lBRU0sc0JBQWMsR0FBckIsVUFBc0IsUUFBZ0IsRUFBRSxTQUFpQjtRQUVyRCxJQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDckQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDdEMsUUFB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Q1IsSUFBSSxDQUFDLE1BQU0sR0FBRyxJQUFJLDhCQUFVLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDcEUsSUFBSSxDQUFDLElBQUksR0FBRyxJQUFJLDBCQUFRLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDaEUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLG9DQUFhLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDMUUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLG9DQUFhLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDMUUsSUFBSSxDQUFDLEtBQUssR0FBRyxJQUFJLDRCQUFTLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDbEUsSUFBSSxDQUFDLE1BQU0sR0FBRyxJQUFJLHNDQUFrQixDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsSUFBSSxDQUFDLFlBQVksQ0FBQyxDQUFDO1FBQzVFLElBQUksQ0FBQyxPQUFPLEdBQUcsSUFBSSw0QkFBVyxDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsSUFBSSxDQUFDLFlBQVksRUFBRSxTQUFTLENBQUMsQ0FBQztRQUVqRix1QkFBTyxDQUFDLGdCQUFnQixFQUFFLENBQUM7SUFDL0IsQ0FBQztJQUNMLFlBQUM7QUFBRCxDQTNCQSxBQTJCQyxJQUFBO0FBRUQsTUFBTSxDQUFDLGNBQWMsQ0FBQyxNQUFNLEVBQUUsT0FBTyxFQUFFLEVBQUUsS0FBSyxFQUFFLElBQUksS0FBSyxFQUFFLEVBQUUsQ0FBQyxDQUFDIiwiZmlsZSI6ImdlbmVyYXRlZC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzQ29udGVudCI6WyIoZnVuY3Rpb24oKXtmdW5jdGlvbiByKGUsbix0KXtmdW5jdGlvbiBvKGksZil7aWYoIW5baV0pe2lmKCFlW2ldKXt2YXIgYz1cImZ1bmN0aW9uXCI9PXR5cGVvZiByZXF1aXJlJiZyZXF1aXJlO2lmKCFmJiZjKXJldHVybiBjKGksITApO2lmKHUpcmV0dXJuIHUoaSwhMCk7dmFyIGE9bmV3IEVycm9yKFwiQ2Fubm90IGZpbmQgbW9kdWxlICdcIitpK1wiJ1wiKTt0aHJvdyBhLmNvZGU9XCJNT0RVTEVfTk9UX0ZPVU5EXCIsYX12YXIgcD1uW2ldPXtleHBvcnRzOnt9fTtlW2ldWzBdLmNhbGwocC5leHBvcnRzLGZ1bmN0aW9uKHIpe3ZhciBuPWVbaV1bMV1bcl07cmV0dXJuIG8obnx8cil9LHAscC5leHBvcnRzLHIsZSxuLHQpfXJldHVybiBuW2ldLmV4cG9ydHN9Zm9yKHZhciB1PVwiZnVuY3Rpb25cIj09dHlwZW9mIHJlcXVpcmUmJnJlcXVpcmUsaT0wO2k8dC5sZW5ndGg7aSsrKW8odFtpXSk7cmV0dXJuIG99cmV0dXJuIHJ9KSgpIiwiXCJ1c2Ugc3RyaWN0XCI7XHJcbnZhciBfX2Fzc2lnbiA9ICh0aGlzICYmIHRoaXMuX19hc3NpZ24pIHx8IE9iamVjdC5hc3NpZ24gfHwgZnVuY3Rpb24odCkge1xyXG4gICAgZm9yICh2YXIgcywgaSA9IDEsIG4gPSBhcmd1bWVudHMubGVuZ3RoOyBpIDwgbjsgaSsrKSB7XHJcbiAgICAgICAgcyA9IGFyZ3VtZW50c1tpXTtcclxuICAgICAgICBmb3IgKHZhciBwIGluIHMpIGlmIChPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwocywgcCkpXHJcbiAgICAgICAgICAgIHRbcF0gPSBzW3BdO1xyXG4gICAgfVxyXG4gICAgcmV0dXJuIHQ7XHJcbn07XHJcbmV4cG9ydHMuX19lc01vZHVsZSA9IHRydWU7XHJcbmZ1bmN0aW9uIHN0cmluZ2lmeUF0dHJpYnV0ZShuYW1lLCB2YWx1ZSkge1xyXG4gICAgaWYgKCF2YWx1ZSkge1xyXG4gICAgICAgIHJldHVybiAnJztcclxuICAgIH1cclxuICAgIHZhciBzdHJpbmdpZmllZCA9ICc7ICcgKyBuYW1lO1xyXG4gICAgaWYgKHZhbHVlID09PSB0cnVlKSB7XHJcbiAgICAgICAgcmV0dXJuIHN0cmluZ2lmaWVkOyAvLyBib29sZWFuIGF0dHJpYnV0ZXMgc2hvdWxkbid0IGhhdmUgYSB2YWx1ZVxyXG4gICAgfVxyXG4gICAgcmV0dXJuIHN0cmluZ2lmaWVkICsgJz0nICsgdmFsdWU7XHJcbn1cclxuZnVuY3Rpb24gc3RyaW5naWZ5QXR0cmlidXRlcyhhdHRyaWJ1dGVzKSB7XHJcbiAgICBpZiAodHlwZW9mIGF0dHJpYnV0ZXMuZXhwaXJlcyA9PT0gJ251bWJlcicpIHtcclxuICAgICAgICB2YXIgZXhwaXJlcyA9IG5ldyBEYXRlKCk7XHJcbiAgICAgICAgZXhwaXJlcy5zZXRNaWxsaXNlY29uZHMoZXhwaXJlcy5nZXRNaWxsaXNlY29uZHMoKSArIGF0dHJpYnV0ZXMuZXhwaXJlcyAqIDg2NGUrNSk7XHJcbiAgICAgICAgYXR0cmlidXRlcy5leHBpcmVzID0gZXhwaXJlcztcclxuICAgIH1cclxuICAgIHJldHVybiBzdHJpbmdpZnlBdHRyaWJ1dGUoJ0V4cGlyZXMnLCBhdHRyaWJ1dGVzLmV4cGlyZXMgPyBhdHRyaWJ1dGVzLmV4cGlyZXMudG9VVENTdHJpbmcoKSA6ICcnKVxyXG4gICAgICAgICsgc3RyaW5naWZ5QXR0cmlidXRlKCdEb21haW4nLCBhdHRyaWJ1dGVzLmRvbWFpbilcclxuICAgICAgICArIHN0cmluZ2lmeUF0dHJpYnV0ZSgnUGF0aCcsIGF0dHJpYnV0ZXMucGF0aClcclxuICAgICAgICArIHN0cmluZ2lmeUF0dHJpYnV0ZSgnU2VjdXJlJywgYXR0cmlidXRlcy5zZWN1cmUpXHJcbiAgICAgICAgKyBzdHJpbmdpZnlBdHRyaWJ1dGUoJ1NhbWVTaXRlJywgYXR0cmlidXRlcy5zYW1lU2l0ZSk7XHJcbn1cclxuZnVuY3Rpb24gZW5jb2RlKG5hbWUsIHZhbHVlLCBhdHRyaWJ1dGVzKSB7XHJcbiAgICByZXR1cm4gZW5jb2RlVVJJQ29tcG9uZW50KG5hbWUpXHJcbiAgICAgICAgLnJlcGxhY2UoLyUoMjN8MjR8MjZ8MkJ8NUV8NjB8N0MpL2csIGRlY29kZVVSSUNvbXBvbmVudCkgLy8gYWxsb3dlZCBzcGVjaWFsIGNoYXJhY3RlcnNcclxuICAgICAgICAucmVwbGFjZSgvXFwoL2csICclMjgnKS5yZXBsYWNlKC9cXCkvZywgJyUyOScpIC8vIHJlcGxhY2Ugb3BlbmluZyBhbmQgY2xvc2luZyBwYXJlbnNcclxuICAgICAgICArICc9JyArIGVuY29kZVVSSUNvbXBvbmVudCh2YWx1ZSlcclxuICAgICAgICAucmVwbGFjZSgvJSgyM3wyNHwyNnwyQnwzQXwzQ3wzRXwzRHwyRnwzRnw0MHw1Qnw1RHw1RXw2MHw3Qnw3RHw3QykvZywgZGVjb2RlVVJJQ29tcG9uZW50KSAvLyBhbGxvd2VkIHNwZWNpYWwgY2hhcmFjdGVyc1xyXG4gICAgICAgICsgc3RyaW5naWZ5QXR0cmlidXRlcyhhdHRyaWJ1dGVzKTtcclxufVxyXG5leHBvcnRzLmVuY29kZSA9IGVuY29kZTtcclxuZnVuY3Rpb24gcGFyc2UoY29va2llU3RyaW5nKSB7XHJcbiAgICB2YXIgcmVzdWx0ID0ge307XHJcbiAgICB2YXIgY29va2llcyA9IGNvb2tpZVN0cmluZyA/IGNvb2tpZVN0cmluZy5zcGxpdCgnOyAnKSA6IFtdO1xyXG4gICAgdmFyIHJkZWNvZGUgPSAvKCVbMC05QS1aXXsyfSkrL2c7XHJcbiAgICBmb3IgKHZhciBpID0gMDsgaSA8IGNvb2tpZXMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICB2YXIgcGFydHMgPSBjb29raWVzW2ldLnNwbGl0KCc9Jyk7XHJcbiAgICAgICAgdmFyIGNvb2tpZSA9IHBhcnRzLnNsaWNlKDEpLmpvaW4oJz0nKTtcclxuICAgICAgICBpZiAoY29va2llLmNoYXJBdCgwKSA9PT0gJ1wiJykge1xyXG4gICAgICAgICAgICBjb29raWUgPSBjb29raWUuc2xpY2UoMSwgLTEpO1xyXG4gICAgICAgIH1cclxuICAgICAgICB0cnkge1xyXG4gICAgICAgICAgICB2YXIgbmFtZV8xID0gcGFydHNbMF0ucmVwbGFjZShyZGVjb2RlLCBkZWNvZGVVUklDb21wb25lbnQpO1xyXG4gICAgICAgICAgICByZXN1bHRbbmFtZV8xXSA9IGNvb2tpZS5yZXBsYWNlKHJkZWNvZGUsIGRlY29kZVVSSUNvbXBvbmVudCk7XHJcbiAgICAgICAgfVxyXG4gICAgICAgIGNhdGNoIChlKSB7XHJcbiAgICAgICAgICAgIC8vIGlnbm9yZSBjb29raWVzIHdpdGggaW52YWxpZCBuYW1lL3ZhbHVlIGVuY29kaW5nXHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG4gICAgcmV0dXJuIHJlc3VsdDtcclxufVxyXG5leHBvcnRzLnBhcnNlID0gcGFyc2U7XHJcbmZ1bmN0aW9uIGdldEFsbCgpIHtcclxuICAgIHJldHVybiBwYXJzZShkb2N1bWVudC5jb29raWUpO1xyXG59XHJcbmV4cG9ydHMuZ2V0QWxsID0gZ2V0QWxsO1xyXG5mdW5jdGlvbiBnZXQobmFtZSkge1xyXG4gICAgcmV0dXJuIGdldEFsbCgpW25hbWVdO1xyXG59XHJcbmV4cG9ydHMuZ2V0ID0gZ2V0O1xyXG5mdW5jdGlvbiBzZXQobmFtZSwgdmFsdWUsIGF0dHJpYnV0ZXMpIHtcclxuICAgIGRvY3VtZW50LmNvb2tpZSA9IGVuY29kZShuYW1lLCB2YWx1ZSwgX19hc3NpZ24oeyBwYXRoOiAnLycgfSwgYXR0cmlidXRlcykpO1xyXG59XHJcbmV4cG9ydHMuc2V0ID0gc2V0O1xyXG5mdW5jdGlvbiByZW1vdmUobmFtZSwgYXR0cmlidXRlcykge1xyXG4gICAgc2V0KG5hbWUsICcnLCBfX2Fzc2lnbih7fSwgYXR0cmlidXRlcywgeyBleHBpcmVzOiAtMSB9KSk7XHJcbn1cclxuZXhwb3J0cy5yZW1vdmUgPSByZW1vdmU7XHJcbiIsIu+7v1widXNlIHN0cmljdFwiO1xyXG5leHBvcnQgY2xhc3MgSGVscGVycyB7XHJcbiAgICBzdGF0aWMgZ2V0SHRtbEVsZW1lbnQoc2VsZWN0b3I6IHN0cmluZykgOiBIVE1MRWxlbWVudCB7XHJcbiAgICAgICAgbGV0IGVsZW06IEhUTUxFbGVtZW50O1xyXG4gICAgICAgIGlmIChzZWxlY3RvclswXSA9PT0gXCIuXCIpIHtcclxuICAgICAgICAgICAgZWxlbSA9IDxIVE1MRWxlbWVudD5kb2N1bWVudC5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKHNlbGVjdG9yKVswXTtcclxuICAgICAgICB9IGVsc2Uge1xyXG4gICAgICAgICAgICBjb25zdCBlbGVtSWQgPSBzZWxlY3RvclswXSA9PT0gXCIjXCIgPyBzZWxlY3Rvci5zdWJzdHIoMSkgOiBzZWxlY3RvcjtcclxuICAgICAgICAgICAgZWxlbSA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGVsZW1JZCk7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICByZXR1cm4gZWxlbTtcclxuICAgIH1cclxuXHJcbiAgICBzdGF0aWMgdG9Eb21haW5OYW1lKG5hbWU6IHN0cmluZyk6IHN0cmluZyB7XHJcbiAgICAgICAgY29uc3QgdXJsQ29tcCA9IG5hbWUucmVwbGFjZShcIiBcIiwgXCItXCIpO1xyXG4gICAgICAgIHJldHVybiB1cmxDb21wO1xyXG4gICAgfVxyXG5cclxuICAgIHN0YXRpYyBnZXRRdWVyeVN0cmluZ1BhcmFtQnlOYW1lKG5hbWU6IHN0cmluZyk6IHN0cmluZyB7XHJcbiAgICAgICAgbmFtZSA9IG5hbWUucmVwbGFjZSgvW1xcW1xcXV0vZywgXCJcXFxcJCZcIik7XHJcbiAgICAgICAgY29uc3QgcmVnZXggPSBuZXcgUmVnRXhwKGBbPyZdJHtuYW1lfSg9KFteJiNdKil8JnwjfCQpYCk7XHJcblxyXG4gICAgICAgIGNvbnN0IHVybCA9IHdpbmRvdy5sb2NhdGlvbi5ocmVmO1xyXG4gICAgICAgIGNvbnN0IHJlc3VsdHMgPSByZWdleC5leGVjKHVybCk7XHJcblxyXG4gICAgICAgIGlmICghcmVzdWx0cykgcmV0dXJuIG51bGw7XHJcbiAgICAgICAgaWYgKCFyZXN1bHRzWzJdKSByZXR1cm4gXCJcIjtcclxuICAgICAgICByZXR1cm4gZGVjb2RlVVJJQ29tcG9uZW50KHJlc3VsdHNbMl0ucmVwbGFjZSgvXFwrL2csIFwiIFwiKSk7XHJcbiAgICB9XHJcblxyXG4gICAgc3RhdGljIHJlbW92ZVF1ZXJ5UGFyYW1Gcm9tVXJsKHVybDogc3RyaW5nLCBuYW1lOiBzdHJpbmcpOiBzdHJpbmcge1xyXG4gICAgICAgIGxldCB1cmxwYXJ0cyA9IHVybC5zcGxpdChcIj9cIik7XHJcbiAgICAgICAgaWYgKHVybHBhcnRzLmxlbmd0aCA+PSAyKSB7XHJcblxyXG4gICAgICAgICAgICB2YXIgcHJlZml4ID0gZW5jb2RlVVJJQ29tcG9uZW50KG5hbWUpICsgXCI9XCI7XHJcbiAgICAgICAgICAgIHZhciBwYXJzID0gdXJscGFydHNbMV0uc3BsaXQoL1smO10vZyk7XHJcblxyXG4gICAgICAgICAgICAvLyByZXZlcnNlIGl0ZXJhdGlvbiBhcyBtYXkgYmUgZGVzdHJ1Y3RpdmVcclxuICAgICAgICAgICAgZm9yICh2YXIgaSA9IHBhcnMubGVuZ3RoOyBpLS0gPiAwOykge1xyXG4gICAgICAgICAgICAgICAgLy8gaWRpb20gZm9yIHN0cmluZy5zdGFydHNXaXRoXHJcbiAgICAgICAgICAgICAgICBpZiAocGFyc1tpXS5sYXN0SW5kZXhPZihwcmVmaXgsIDApICE9PSAtMSkge1xyXG4gICAgICAgICAgICAgICAgICAgIHBhcnMuc3BsaWNlKGksIDEpO1xyXG4gICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICB9XHJcblxyXG4gICAgICAgICAgICB1cmwgPSB1cmxwYXJ0c1swXSArIChwYXJzLmxlbmd0aCA+IDAgPyBcIj9cIiArIHBhcnMuam9pbihcIiZcIikgOiBcIlwiKTtcclxuICAgICAgICAgICAgd2luZG93Lmhpc3RvcnkucHVzaFN0YXRlKHsgcGF0aDogdXJsIH0sICcnLCB1cmwpO1xyXG4gICAgICAgICAgICByZXR1cm4gdXJsO1xyXG4gICAgICAgIH0gZWxzZSB7XHJcbiAgICAgICAgICAgIHJldHVybiB1cmw7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHN0YXRpYyBhZGRRdWVyeVBhcmFtVG9VcmwodXJsOiBzdHJpbmcsIG5hbWU6IHN0cmluZywgdmFsdWU6IHN0cmluZyk6IHZvaWQge1xyXG4gICAgICAgIGlmIChoaXN0b3J5LnB1c2hTdGF0ZSkge1xyXG4gICAgICAgICAgICAvLyByZW1vdmUgYW55IHBhcmFtIGZvciB0aGUgc2FtZSBrZXlcclxuICAgICAgICAgICAgdmFyIGN1cnJlbnRVcmwgPSBIZWxwZXJzLnJlbW92ZVF1ZXJ5UGFyYW1Gcm9tVXJsKHVybCwgbmFtZSk7XHJcblxyXG4gICAgICAgICAgICAvLyBmaWd1cmUgb3V0IGlmIHdlIG5lZWQgdG8gYWRkIHRoZSBwYXJhbSB3aXRoIGEgPyBvciBhICZcclxuICAgICAgICAgICAgdmFyIHF1ZXJ5U3RhcnQ6IHN0cmluZztcclxuICAgICAgICAgICAgaWYgKGN1cnJlbnRVcmwuaW5kZXhPZihcIj9cIikgIT09IC0xKSB7XHJcbiAgICAgICAgICAgICAgICBxdWVyeVN0YXJ0ID0gXCImXCI7XHJcbiAgICAgICAgICAgIH0gZWxzZSB7XHJcbiAgICAgICAgICAgICAgICBxdWVyeVN0YXJ0ID0gXCI/XCI7XHJcbiAgICAgICAgICAgIH1cclxuXHJcbiAgICAgICAgICAgIHZhciBuZXd1cmwgPSBjdXJyZW50VXJsICsgcXVlcnlTdGFydCArIG5hbWUgKyAnPScgKyB2YWx1ZTtcclxuICAgICAgICAgICAgd2luZG93Lmhpc3RvcnkucHVzaFN0YXRlKHsgcGF0aDogbmV3dXJsIH0sICcnLCBuZXd1cmwpO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBzdGF0aWMgZ2V0Vmlld05hbWUobmFtZT86IHN0cmluZyk6IHN0cmluZyB7XHJcbiAgICAgICAgbGV0IHZpZXdOYW1lID0gbmFtZTtcclxuXHJcbiAgICAgICAgbGV0IHVybCA9IHdpbmRvdy5sb2NhdGlvbi5wYXRobmFtZTtcclxuICAgICAgICBpZiAodXJsKSB7XHJcbiAgICAgICAgICAgIHVybCA9IHVybC5pbmRleE9mKFwiL1wiKSA9PT0gMCA/IHVybC5zdWJzdHIoMSwgdXJsLmxlbmd0aCkgOiB1cmw7XHJcbiAgICAgICAgICAgIHVybCA9IHVybC5sYXN0SW5kZXhPZihcIi9cIikgPT09IHVybC5sZW5ndGggLSAxID8gdXJsLnN1YnN0cigwLCB1cmwubGVuZ3RoIC0gMSkgOiB1cmw7XHJcblxyXG4gICAgICAgICAgICBjb25zdCB1cmxQYXJ0cyA9IHVybC5zcGxpdChcIi9cIik7XHJcbiAgICAgICAgICAgIGlmICghdmlld05hbWUpIHtcclxuICAgICAgICAgICAgICAgIC8vIE5PVEU6IFNob3VsZCBiZSBhbiBpbmZvUGFnaW5hXHJcbiAgICAgICAgICAgICAgICBjb25zdCB2aWV3UGF0aCA9IHVybFBhcnRzLnNsaWNlKE1hdGgubWF4KHVybFBhcnRzLmxlbmd0aCAtIDMsIDEpKS5qb2luKFwiXFxcXFwiKTtcclxuICAgICAgICAgICAgICAgIHZpZXdOYW1lID0gdmlld1BhdGg7IFxyXG4gICAgICAgICAgICB9XHJcblxyXG4gICAgICAgICAgICBpZiAodXJsUGFydHMubGVuZ3RoID4gMSkge1xyXG4gICAgICAgICAgICAgICAgY29uc3QgbGFuZyA9IHVybFBhcnRzWzBdO1xyXG4gICAgICAgICAgICAgICAgY29uc3QgY2l0eSA9IHVybFBhcnRzWzFdO1xyXG4gICAgICAgICAgICAgICAgdmlld05hbWUgPSBgJHtjaXR5fSAtICR7dmlld05hbWV9IFske2xhbmd9XWA7XHJcbiAgICAgICAgICAgIH1cclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIGlmICghdmlld05hbWUpIHtcclxuICAgICAgICAgICAgdmlld05hbWUgPSBgW09uYmVrZW5kXSAke3dpbmRvdy5sb2NhdGlvbi5ocmVmfWA7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICByZXR1cm4gdmlld05hbWU7XHJcbiAgICB9XHJcblxyXG4gICAgc3RhdGljIHRvZ2dsZUFyaWFIaWRkZW4oc2VsZWN0b3JUcnVlOiBzdHJpbmcsIHNlbGVjdG9yRmFsc2U/OiBzdHJpbmcpOiB2b2lkIHtcclxuXHJcbiAgICAgICAgaWYgKCFzZWxlY3RvckZhbHNlKSB7XHJcbiAgICAgICAgICAgIHNlbGVjdG9yRmFsc2UgPSBcIipbYXJpYS1oaWRkZW49XFxcImZhbHNlXFxcIl1cIjtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIGNvbnN0IGFyaWFIaWRkZW5GYWxzZSA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoc2VsZWN0b3JGYWxzZSk7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBhcmlhSGlkZGVuRmFsc2UubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgYXJpYUhpZGRlbkZhbHNlW2ldLnNldEF0dHJpYnV0ZShcImFyaWEtaGlkZGVuXCIsIFwidHJ1ZVwiKTtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIGNvbnN0IGFyaWFIaWRkZW5UcnVlID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3RvclRydWUpO1xyXG4gICAgICAgIGZvciAobGV0IGogPSAwOyBqIDwgYXJpYUhpZGRlblRydWUubGVuZ3RoOyBqKyspIHtcclxuICAgICAgICAgICAgYXJpYUhpZGRlblRydWVbal0uc2V0QXR0cmlidXRlKFwiYXJpYS1oaWRkZW5cIiwgXCJmYWxzZVwiKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgc3RhdGljIHRvZ2dsZVRhYkluZGV4KHNlbGVjdG9ySW46IHN0cmluZywgc2VsZWN0b3JPdXQ6IHN0cmluZyk6IHZvaWQge1xyXG5cclxuICAgICAgICBjb25zdCBlbGVtVGFiSWR4T3V0ID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3Rvck91dCk7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtVGFiSWR4T3V0Lmxlbmd0aDsgaSsrKSB7XHJcbiAgICAgICAgICAgIGVsZW1UYWJJZHhPdXRbaV0uc2V0QXR0cmlidXRlKFwidGFiaW5kZXhcIiwgXCItMVwiKTtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIGNvbnN0IGVsZW1UYWJJZHhJbiA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoc2VsZWN0b3JJbik7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtVGFiSWR4SW4ubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgZWxlbVRhYklkeEluW2ldLnNldEF0dHJpYnV0ZShcInRhYmluZGV4XCIsIFwiMFwiKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgc3RhdGljIHJlbW92ZUNsYXNzQWxsKHNlbGVjdG9yOiBzdHJpbmcsIGNsYXNzbmFtZTogc3RyaW5nKTogdm9pZCB7XHJcblxyXG4gICAgICAgIGNvbnN0IGVsZW1lbnRzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3Rvcik7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtZW50cy5sZW5ndGg7IGkrKykge1xyXG4gICAgICAgICAgICBlbGVtZW50c1tpXS5jbGFzc0xpc3QucmVtb3ZlKGNsYXNzbmFtZSk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHN0YXRpYyBzaG93U2Nyb2xsVG9Ub3BCdXR0b24oKTogdm9pZCB7XHJcbiAgICAgICAgY29uc3QgdXBCdG4gPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwiLnVwXCIpIGFzIEhUTUxFbGVtZW50O1xyXG4gICAgICAgIGlmICh1cEJ0bikge1xyXG5cclxuICAgICAgICAgICAgY29uc3Qgd3JhcHBlciA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIud3JhcHBlclwiKSBhcyBIVE1MRWxlbWVudDs7XHJcbiAgICAgICAgICAgIGNvbnN0IHQgPSB1cEJ0bi5vZmZzZXRUb3AgKyAod3JhcHBlciA/IHdyYXBwZXIub2Zmc2V0VG9wIDogMCk7XHJcbiAgICAgICAgICAgIGNvbnN0IGggPSB3aW5kb3cuaW5uZXJIZWlnaHQ7XHJcblxyXG4gICAgICAgICAgICBpZiAodCA+IGgpIHtcclxuICAgICAgICAgICAgICAgIHVwQnRuLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgICAgICB1cEJ0bi5zZXRBdHRyaWJ1dGUoXCJ0YWJpbmRleFwiLCBcIjBcIik7XHJcbiAgICAgICAgICAgIH0gZWxzZSB7XHJcbiAgICAgICAgICAgICAgICB1cEJ0bi5jbGFzc0xpc3QucmVtb3ZlKFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICAgICAgdXBCdG4uc2V0QXR0cmlidXRlKFwidGFiaW5kZXhcIiwgXCItMVwiKTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBzdGF0aWMgc2Nyb2xsVG9Ub3AoKTogdm9pZCB7XHJcbiAgICAgICAgd2luZG93LnNjcm9sbFRvKDAsIDApO1xyXG4gICAgfVxyXG5cclxuICAgIHN0YXRpYyBzZXRSdGwodmFsOiBib29sZWFuKSB7XHJcbiAgICAgICAgY29uc3QgcnRsQ2xhc3M6IHN0cmluZyA9IFwicnRsXCI7XHJcbiAgICAgICAgY29uc3QgcnRsID0gZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuY29udGFpbnMocnRsQ2xhc3MpO1xyXG5cclxuICAgICAgICBpZiAodmFsICYmICFydGwpXHJcbiAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LmFkZChydGxDbGFzcyk7XHJcbiAgICAgICAgZWxzZSBpZiAoIXZhbCAmJiBydGwpXHJcbiAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LnJlbW92ZShydGxDbGFzcyk7XHJcbiAgICB9O1xyXG5cclxuICAgIHN0YXRpYyBzZXRUZXh0RGlyZWN0aW9uID0gKCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGNvbnN0IHBhdGggPSB3aW5kb3cubG9jYXRpb24ucGF0aG5hbWU7XHJcbiAgICAgICAgY29uc3QgbGFuZyA9IHBhdGguc3Vic3RyKDEsIDIpO1xyXG4gICAgICAgIEhlbHBlcnMuc2V0UnRsKGxhbmcudG9Mb3dlckNhc2UoKSA9PT0gXCJhclwiKTtcclxuICAgIH1cclxuXHJcbiAgICBzdGF0aWMgc2hhcmUgPSAodGl0bGU6IHN0cmluZywgdXJsOiBzdHJpbmcpOiBib29sZWFuID0+IHtcclxuXHJcbiAgICAgICAgbGV0IHJlc3VsdCA9IGZhbHNlO1xyXG5cclxuICAgICAgICBsZXQgbmF2aWdhdG9yQXNBbnkgPSAobmF2aWdhdG9yIGFzIGFueSk7XHJcblxyXG4gICAgICAgIC8vIEEuIHNoYXJlIG5hdGl2ZSBpZiBhdmFpbGFibGUgKG9uIG1vYmlsZSBkZXZpY2UpXHJcbiAgICAgICAgaWYgKG5hdmlnYXRvckFzQW55LnNoYXJlKSB7XHJcbiAgICAgICAgICAgIG5hdmlnYXRvckFzQW55LnNoYXJlKHtcclxuICAgICAgICAgICAgICAgIHRpdGxlOiB0aXRsZSxcclxuICAgICAgICAgICAgICAgIHRleHQ6IHRpdGxlLFxyXG4gICAgICAgICAgICAgICAgdXJsOiB1cmwsXHJcbiAgICAgICAgICAgIH0pLmFsd2F5cygoKSA9PiB7IHJldHVybiBmYWxzZTsgfSk7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICAvLyBvciBCOiBDb3B5IHRoZSB1cmwgdG8gdGhlIGNsaXBib2FyZFxyXG4gICAgICAgIC8vIC0gY3JlYXRlIHRleHRhcmVhLCBtb3ZlIGl0IG9mZiBzY3JlZW5cclxuICAgICAgICBjb25zdCB0ZXh0YXJlYSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RleHRhcmVhJyk7XHJcbiAgICAgICAgdGV4dGFyZWEuc3R5bGUuY3NzVGV4dCA9IFwicG9zaXRpb246IGFic29sdXRlOyBsZWZ0OiAtOTk5OTllbVwiO1xyXG5cclxuICAgICAgICAvLyAtIHNldCB0byByZWFkb25seSB0byBwcmV2ZW50IG1vYmlsZSBkZXZpY2VzIG9wZW5pbmcgYSBrZXlib2FyZCB3aGVuIHRleHQgaXMgc2VsZWN0ZWRcclxuICAgICAgICB0ZXh0YXJlYS5zZXRBdHRyaWJ1dGUoXCJyZWFkb25seVwiLCBcInRydWVcIik7XHJcblxyXG4gICAgICAgIC8vIGFwcGVuZCB0byBib2R5IGFuZCBzZXQgdmFsdWVcclxuICAgICAgICBkb2N1bWVudC5ib2R5LmFwcGVuZENoaWxkKHRleHRhcmVhKTtcclxuICAgICAgICB0ZXh0YXJlYS52YWx1ZSA9IHVybDtcclxuXHJcbiAgICAgICAgLy8gLSBjaGVjayBpZiB0aGVyZSBpcyBhbnkgY29udGVudCBzZWxlY3RlZCBwcmV2aW91c2x5XHJcbiAgICAgICAgY29uc3Qgc2VsZWN0ZWQgPSBkb2N1bWVudC5nZXRTZWxlY3Rpb24oKS5yYW5nZUNvdW50ID4gMCA/XHJcbiAgICAgICAgICAgIGRvY3VtZW50LmdldFNlbGVjdGlvbigpLmdldFJhbmdlQXQoMCkgOiBmYWxzZTtcclxuXHJcbiAgICAgICAgLy8gLSBpT1MgU2FmYXJpIGJsb2NrcyBwcm9ncmFtbWF0aWMgZXhlY0NvbW1hbmQgY29weWluZyBub3JtYWxseSwgd2l0aG91dCB0aGlzIGhhY2suXHJcbiAgICAgICAgLy8gaHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvMzQwNDU3NzcvY29weS10by1jbGlwYm9hcmQtdXNpbmctamF2YXNjcmlwdC1pbi1pb3NcclxuICAgICAgICBpZiAobmF2aWdhdG9yLnVzZXJBZ2VudC5tYXRjaCgvaXBhZHxpcG9kfGlwaG9uZS9pKSkge1xyXG4gICAgICAgICAgICBjb25zdCBlZGl0YWJsZSA9IHRleHRhcmVhLmNvbnRlbnRFZGl0YWJsZTtcclxuICAgICAgICAgICAgdGV4dGFyZWEuY29udGVudEVkaXRhYmxlID0gXCJ0cnVlXCI7XHJcbiAgICAgICAgICAgIGNvbnN0IHJhbmdlID0gZG9jdW1lbnQuY3JlYXRlUmFuZ2UoKTtcclxuICAgICAgICAgICAgcmFuZ2Uuc2VsZWN0Tm9kZUNvbnRlbnRzKHRleHRhcmVhKTtcclxuICAgICAgICAgICAgY29uc3Qgc2VsID0gd2luZG93LmdldFNlbGVjdGlvbigpO1xyXG4gICAgICAgICAgICBzZWwucmVtb3ZlQWxsUmFuZ2VzKCk7XHJcbiAgICAgICAgICAgIHNlbC5hZGRSYW5nZShyYW5nZSk7XHJcbiAgICAgICAgICAgIHRleHRhcmVhLnNldFNlbGVjdGlvblJhbmdlKDAsIDk5OTk5OSk7XHJcbiAgICAgICAgICAgIHRleHRhcmVhLmNvbnRlbnRFZGl0YWJsZSA9IGVkaXRhYmxlO1xyXG4gICAgICAgIH0gZWxzZSB7XHJcbiAgICAgICAgICAgIHRleHRhcmVhLnNlbGVjdCgpO1xyXG4gICAgICAgIH1cclxuXHJcbiAgICAgICAgdHJ5IHtcclxuICAgICAgICAgICAgcmVzdWx0ID0gZG9jdW1lbnQuZXhlY0NvbW1hbmQoXCJjb3B5XCIpO1xyXG5cclxuICAgICAgICAgICAgLy8gLSByZXN0b3JlIHByZXZpb3VzIHNlbGVjdGlvbi5cclxuICAgICAgICAgICAgaWYgKHNlbGVjdGVkKSB7XHJcbiAgICAgICAgICAgICAgICBkb2N1bWVudC5nZXRTZWxlY3Rpb24oKS5yZW1vdmVBbGxSYW5nZXMoKTtcclxuICAgICAgICAgICAgICAgIGRvY3VtZW50LmdldFNlbGVjdGlvbigpLmFkZFJhbmdlKHNlbGVjdGVkKTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgICAgICBmaW5hbGx5IHtcclxuICAgICAgICAgICAgLy8gLSBjbGVhbnVwIHRoZSB0ZXh0YXJlYVxyXG4gICAgICAgICAgICBkb2N1bWVudC5ib2R5LnJlbW92ZUNoaWxkKHRleHRhcmVhKTtcclxuICAgICAgICAgICAgcmV0dXJuIHJlc3VsdDtcclxuICAgICAgICB9XHJcbiAgICB9XHJcbn1cclxuIiwi77u/XCJ1c2Ugc3RyaWN0XCI7XHJcbmltcG9ydCB7IEhlbHBlcnMgfSBmcm9tIFwiLi9ubGFwcC1oZWxwZXJzXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgTW9uaXRvcmluZ1NlcnZpY2Uge1xyXG5cclxuICAgIGxvZ1BhZ2UgPSAodmlld05hbWU/OiBzdHJpbmcpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBwYWdlVXJsID0gd2luZG93LmxvY2F0aW9uLmhyZWY7XHJcbiAgICAgICAgY29uc3QgcGFnZU5hbWUgPSBIZWxwZXJzLmdldFZpZXdOYW1lKHZpZXdOYW1lKTtcclxuICAgICAgICB0aGlzLmxvZ1BhZ2VWaWV3KHBhZ2VOYW1lLCBwYWdlVXJsKTtcclxuICAgIH1cclxuXHJcbiAgICBsb2dDaGFwdGVyID0gKGNoYXB0ZXI6IEVsZW1lbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBsZXQgcGFnZU5hbWUgPSBjaGFwdGVyLmdldEF0dHJpYnV0ZShcImRhdGEtbmFtZVwiKTtcclxuICAgICAgICBwYWdlTmFtZSA9IEhlbHBlcnMuZ2V0Vmlld05hbWUocGFnZU5hbWUpO1xyXG5cclxuICAgICAgICBjb25zdCBwYWdlVXJsID0gY2hhcHRlci5nZXRBdHRyaWJ1dGUoXCJkYXRhLXVybFwiKTtcclxuXHJcbiAgICAgICAgdGhpcy5sb2dQYWdlVmlldyhwYWdlTmFtZSwgcGFnZVVybCk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9nSW50ZXJuYWxMaW5rID0gKGNoYXB0ZXI6IEVsZW1lbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBsZXQgcGFnZU5hbWUgPSBjaGFwdGVyLmdldEF0dHJpYnV0ZShcImRhdGEtbmFtZVwiKTtcclxuICAgICAgICBwYWdlTmFtZSA9IEhlbHBlcnMuZ2V0Vmlld05hbWUocGFnZU5hbWUpO1xyXG5cclxuICAgICAgICBjb25zdCBwYWdlVXJsID0gY2hhcHRlci5nZXRBdHRyaWJ1dGUoXCJkYXRhLXVybFwiKTtcclxuICAgICAgICBjb25zdCBmcm9tVXJsID0gSGVscGVycy5nZXRRdWVyeVN0cmluZ1BhcmFtQnlOYW1lKFwiZnJvbVwiKTtcclxuXHJcbiAgICAgICAgdGhpcy5sb2dQYWdlVmlldyhwYWdlTmFtZSwgcGFnZVVybCwgZnJvbVVybCA/IHsgZnJvbVVybDogZnJvbVVybCB9IDogbnVsbCk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9nRXh0ZXJuYWxMaW5rID0gKHVybDogc3RyaW5nKTogdm9pZCA9PiB7XHJcbiAgICAgICAgdGhpcy5sb2dFdmVudChcIkV4dGVybmFsTGlua1wiLCB7IGV4dGVybmFsVXJsOiB1cmwgfSk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9nU2hhcmVMaW5rID0gKHVybDogc3RyaW5nKTogdm9pZCA9PiB7XHJcbiAgICAgICAgdGhpcy5sb2dFdmVudChcIlNoYXJlTGlua1wiLCB7IHNoYXJlVXJsOiB1cmwgfSk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9nU2VydmljZVdvcmtlciA9IChhY3Rpb246IHN0cmluZywgc3VjY2VzOiBib29sZWFuKTogdm9pZCA9PiB7XHJcbiAgICAgICAgdGhpcy5sb2dFdmVudChcIlNlcnZpY2Ugd29ya2VyXCIsIHsgYWN0aW9uOiBhY3Rpb24sIHN1Y2Nlczogc3VjY2VzIH0pO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgbG9nUGFnZVZpZXcgPSAobmFtZT86IHN0cmluZywgdXJsPzogc3RyaW5nLCBwcm9wZXJ0aWVzPzogYW55LCBtZWFzdXJlbWVudHM/OiBhbnksIGR1cmF0aW9uPzogbnVtYmVyKTogdm9pZCA9PiB7XHJcbiAgICAgICAgaWYgKCg8YW55PndpbmRvdykuYXBwSW5zaWdodHMgJiYgbmF2aWdhdG9yICYmIG5hdmlnYXRvci5vbkxpbmUpIHtcclxuICAgICAgICAgICAgKDxhbnk+d2luZG93KS5hcHBJbnNpZ2h0cy50cmFja1BhZ2VWaWV3KG5hbWUsIHVybCwgcHJvcGVydGllcywgbWVhc3VyZW1lbnRzLCBkdXJhdGlvbik7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgbG9nRXZlbnQgPSAobmFtZTogc3RyaW5nLCBwcm9wZXJ0aWVzPzogYW55LCBtZWFzdXJlbWVudHM/OiBhbnkpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoKDxhbnk+d2luZG93KS5hcHBJbnNpZ2h0cyAmJiBuYXZpZ2F0b3IgJiYgbmF2aWdhdG9yLm9uTGluZSkge1xyXG4gICAgICAgICAgICAoPGFueT53aW5kb3cpLmFwcEluc2lnaHRzLnRyYWNrRXZlbnQobmFtZSwgcHJvcGVydGllcywgbWVhc3VyZW1lbnRzKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcbn1cclxuIiwi77u/XCJ1c2Ugc3RyaWN0XCI7XHJcbmltcG9ydCB7IE1vbml0b3JpbmdTZXJ2aWNlIH0gZnJvbSBcIi4vbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgUHdhSW5zdGFsbGVyIHtcclxuXHJcbiAgICBwcml2YXRlIGRlZmVycmVkUHJvbXB0OiBhbnk7XHJcbiAgICBwcml2YXRlIGluaXRpYWw6IGJvb2xlYW4gPSB0cnVlO1xyXG4gICAgcHJpdmF0ZSByZWFkb25seSBpbnN0YWxsQ29udGFpbmVyOiBIVE1MRWxlbWVudDtcclxuICAgIHByaXZhdGUgcmVhZG9ubHkgaW5zdGFsbEJ1dHRvbjogSFRNTEVsZW1lbnQ7XHJcbiAgICBwcml2YXRlIHNlcnZpY2V3b3JrZXI6IFNlcnZpY2VXb3JrZXI7XHJcblxyXG5cclxuICAgIGNvbnN0cnVjdG9yKGluc3RhbGxDb250YWluZXJJZDogc3RyaW5nLCBpbnN0YWxsQnRuSWQ6IHN0cmluZykge1xyXG4gICAgICAgIHRoaXMuaW5zdGFsbENvbnRhaW5lciA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKGluc3RhbGxDb250YWluZXJJZCk7XHJcbiAgICAgICAgdGhpcy5pbnN0YWxsQnV0dG9uID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoaW5zdGFsbEJ0bklkKTtcclxuICAgIH1cclxuXHJcbiAgICBpbml0ID0gKCkgPT4ge1xyXG4gICAgICAgIGlmIChcInNlcnZpY2VXb3JrZXJcIiBpbiBuYXZpZ2F0b3IpIHtcclxuXHJcbiAgICAgICAgICAgIHZhciBzY29wZUZyb21QYXRoID0gdGhpcy5nZXRTY29wZUZyb21QYXRoTmFtZSh3aW5kb3cubG9jYXRpb24ucGF0aG5hbWUpO1xyXG5cclxuICAgICAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJsb2FkXCIsXHJcbiAgICAgICAgICAgICAgICAoKSA9PiB7XHJcbiAgICAgICAgICAgICAgICAgICAgbmF2aWdhdG9yLnNlcnZpY2VXb3JrZXJcclxuICAgICAgICAgICAgICAgICAgICAgICAgLnJlZ2lzdGVyKFwic2VydmljZS13b3JrZXIuanNcIiwgeyBzY29wZTogc2NvcGVGcm9tUGF0aCB9KVxyXG4gICAgICAgICAgICAgICAgICAgICAgICAudGhlbigocmVnOiBTZXJ2aWNlV29ya2VyUmVnaXN0cmF0aW9uKSA9PiB7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyByZWdpc3RlcmVkXHJcblxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKG5hdmlnYXRvci5zZXJ2aWNlV29ya2VyLmNvbnRyb2xsZXIpIHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGlzLnNlcnZpY2V3b3JrZXIucG9zdE1lc3NhZ2UoeyBhY3Rpb246IFwiY2xlYXJGaWxlc1wiIH0pO1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgfVxyXG5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZy5vbnVwZGF0ZWZvdW5kID0gKCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEFuIHVwZGF0ZWQgc2VydmljZSB3b3JrZXIgaGFzIGFwcGVhcmVkIGluIHJlZy5pbnN0YWxsaW5nIVxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuc2VydmljZXdvcmtlciA9IHJlZy5pbnN0YWxsaW5nO1xyXG5cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGlzLnNlcnZpY2V3b3JrZXIub25zdGF0ZWNoYW5nZSA9ICgpID0+IHtcclxuXHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEhhcyBzZXJ2aWNlIHdvcmtlciBzdGF0ZSBjaGFuZ2VkP1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzd2l0Y2ggKHRoaXMuc2VydmljZXdvcmtlci5zdGF0ZSkge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYXNlIFwiaW5zdGFsbGVkXCI6XHJcblxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gVGhlcmUgaXMgYSBuZXcgc2VydmljZSB3b3JrZXIgYXZhaWxhYmxlLCBhdXRvbWF0aWNhbGx5IHVwZGF0ZSB0aGUgc2VydmljZSB3b3JrZXJcclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChuYXZpZ2F0b3Iuc2VydmljZVdvcmtlci5jb250cm9sbGVyKSB7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGhpcy5zZXJ2aWNld29ya2VyLnBvc3RNZXNzYWdlKHsgYWN0aW9uOiBcInNraXBXYWl0aW5nXCIgfSk7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XHJcblxyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9O1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgfTtcclxuICAgICAgICAgICAgICAgICAgICAgICAgfSkuY2F0Y2goKGVycikgPT4ge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gcmVnaXN0cmF0aW9uIGVycm9yXHJcbiAgICAgICAgICAgICAgICAgICAgICAgIH0pO1xyXG4gICAgICAgICAgICAgICAgfSk7XHJcblxyXG5cclxuICAgICAgICAgICAgY29uc3QgaW5zdGFsbGVyID0gdGhpcztcclxuXHJcbiAgICAgICAgICAgIGlmICh0aGlzLmlzUHdhSW5zdGFsbGVkKCkpIHtcclxuICAgICAgICAgICAgICAgIGluc3RhbGxlci5zaG93SXNJbnN0YWxsZWRCdXR0b24oKTtcclxuICAgICAgICAgICAgfSBlbHNlIHtcclxuXHJcbiAgICAgICAgICAgICAgICBpbnN0YWxsZXIuaGlkZUluc3RhbGxCdXR0b24oKTtcclxuXHJcbiAgICAgICAgICAgICAgICB3aW5kb3cuYWRkRXZlbnRMaXN0ZW5lcihcImJlZm9yZWluc3RhbGxwcm9tcHRcIixcclxuICAgICAgICAgICAgICAgICAgICAoZTogRXZlbnQpID0+IHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgLy8gcHJldmVudCBmcm9tIGF1dG9tYXRpY2FsbHkgc2hvd2luZyB0aGUgcHJvbXB0XHJcbiAgICAgICAgICAgICAgICAgICAgICAgIGUucHJldmVudERlZmF1bHQoKTtcclxuXHJcbiAgICAgICAgICAgICAgICAgICAgICAgIC8vIHN0YXNoIHRoZSBldmVudCBzbyBpdCBjYW4gYmUgdHJpZ2dlcmVkIGxhdGVyXHJcbiAgICAgICAgICAgICAgICAgICAgICAgIGluc3RhbGxlci5kZWZlcnJlZFByb21wdCA9IGU7XHJcblxyXG4gICAgICAgICAgICAgICAgICAgICAgICAvLyB1cGRhdGUgVUkgbm90aWZ5IHRoZSB1c2VyIHRoZXkgY2FuIGFkZCB0byBob21lIHNjcmVlblxyXG4gICAgICAgICAgICAgICAgICAgICAgICBpbnN0YWxsZXIuc2hvd0luc3RhbGxCdXR0b24oKTtcclxuICAgICAgICAgICAgICAgICAgICB9KTtcclxuXHJcbiAgICAgICAgICAgICAgICB3aW5kb3cuYWRkRXZlbnRMaXN0ZW5lcihcImFwcGluc3RhbGxlZFwiLFxyXG4gICAgICAgICAgICAgICAgICAgICgpID0+IHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgaW5zdGFsbGVyLnNob3dJc0luc3RhbGxlZEJ1dHRvbigpO1xyXG4gICAgICAgICAgICAgICAgICAgICAgICBuZXcgTW9uaXRvcmluZ1NlcnZpY2UoKS5sb2dTZXJ2aWNlV29ya2VyKFwiQXBwbGljYXRpb24gaW5zdGFsbGVkXCIsIHRydWUpO1xyXG4gICAgICAgICAgICAgICAgICAgICAgICB3aW5kb3cubG9jYXRpb24ucmVsb2FkKCk7XHJcbiAgICAgICAgICAgICAgICAgICAgfSk7XHJcbiAgICAgICAgICAgIH1cclxuXHJcbiAgICAgICAgfSBlbHNlIHtcclxuICAgICAgICAgICAgLy8gbm90IHN1cHBvcnRlZFxyXG4gICAgICAgICAgICB0aGlzLmhpZGVJbnN0YWxsQnV0dG9uKCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgaXNQd2FJbnN0YWxsZWQgPSAoKTogYm9vbGVhbiA9PiB7XHJcbiAgICAgICAgcmV0dXJuIChcInNlcnZpY2VXb3JrZXJcIiBpbiBuYXZpZ2F0b3IpICYmIG5hdmlnYXRvci5zZXJ2aWNlV29ya2VyLmNvbnRyb2xsZXIgJiYgbmF2aWdhdG9yLnNlcnZpY2VXb3JrZXIuY29udHJvbGxlci5zdGF0ZSA9PT0gXCJhY3RpdmF0ZWRcIiAmJiB3aW5kb3cubWF0Y2hNZWRpYSgnKGRpc3BsYXktbW9kZTogc3RhbmRhbG9uZSknKS5tYXRjaGVzO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgZ2V0U2NvcGVGcm9tUGF0aE5hbWUgPSAocGF0aE5hbWU6IHN0cmluZyk6IHN0cmluZyA9PiB7XHJcbiAgICAgICAgaWYgKHBhdGhOYW1lKVxyXG4gICAgICAgICAgICByZXR1cm4gcGF0aE5hbWUuc3BsaXQoXCIvXCIsIDMpLmpvaW4oXCIvXCIpO1xyXG5cclxuICAgICAgICByZXR1cm4gcGF0aE5hbWU7XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBzaG93SXNJbnN0YWxsZWRCdXR0b24gPSAoKSA9PiB7XHJcbiAgICAgICAgaWYgKHRoaXMuaW5zdGFsbENvbnRhaW5lciAmJiB0aGlzLmluc3RhbGxCdXR0b24pIHtcclxuICAgICAgICAgICAgdGhpcy5pbnN0YWxsQ29udGFpbmVyLmNsYXNzTGlzdC5yZW1vdmUoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgIHRoaXMuaW5zdGFsbENvbnRhaW5lci5jbGFzc0xpc3QuYWRkKFwiaW5zdGFsbGVkXCIpO1xyXG4gICAgICAgICAgICB0aGlzLmluc3RhbGxCdXR0b24ucmVtb3ZlRXZlbnRMaXN0ZW5lcihcImNsaWNrXCIsIHRoaXMuaW5zdGFsbEFwcCwgdHJ1ZSk7XHJcbiAgICAgICAgICAgIHRoaXMuaW5pdGlhbCA9IGZhbHNlO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIHNob3dJbnN0YWxsQnV0dG9uID0gKCkgPT4ge1xyXG4gICAgICAgIGlmICh0aGlzLmluc3RhbGxDb250YWluZXIgJiYgdGhpcy5pbnN0YWxsQnV0dG9uKSB7XHJcbiAgICAgICAgICAgIHRoaXMuaW5zdGFsbENvbnRhaW5lci5jbGFzc0xpc3QucmVtb3ZlKFwiaW5zdGFsbGVkXCIpO1xyXG4gICAgICAgICAgICB0aGlzLmluc3RhbGxDb250YWluZXIuY2xhc3NMaXN0LmFkZChcImFjdGl2ZVwiKTtcclxuICAgICAgICAgICAgdGhpcy5pbnN0YWxsQnV0dG9uLmFkZEV2ZW50TGlzdGVuZXIoXCJjbGlja1wiLCB0aGlzLmluc3RhbGxBcHAsIHRydWUpO1xyXG4gICAgICAgICAgICB0aGlzLmluaXRpYWwgPSBmYWxzZTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBoaWRlSW5zdGFsbEJ1dHRvbiA9ICgpID0+IHtcclxuICAgICAgICBpZiAodGhpcy5pbnN0YWxsQ29udGFpbmVyICYmIHRoaXMuaW5zdGFsbEJ1dHRvbikge1xyXG4gICAgICAgICAgICB0aGlzLmluc3RhbGxDb250YWluZXIuY2xhc3NMaXN0LnJlbW92ZShcImluc3RhbGxlZFwiKTtcclxuICAgICAgICAgICAgdGhpcy5pbnN0YWxsQ29udGFpbmVyLmNsYXNzTGlzdC5yZW1vdmUoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgIHRoaXMuaW5zdGFsbEJ1dHRvbi5yZW1vdmVFdmVudExpc3RlbmVyKFwiY2xpY2tcIiwgdGhpcy5pbnN0YWxsQXBwLCB0cnVlKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBpbnN0YWxsQXBwID0gKGV2dDogRXZlbnQpID0+IHtcclxuICAgICAgICBldnQucHJldmVudERlZmF1bHQoKTtcclxuXHJcbiAgICAgICAgaWYgKCFuYXZpZ2F0b3Iub25MaW5lKSB7XHJcbiAgICAgICAgICAgIHJldHVybjtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIGxldCBwcm9tcHQgPSB0aGlzLmRlZmVycmVkUHJvbXB0O1xyXG4gICAgICAgIGlmIChwcm9tcHQpIHtcclxuICAgICAgICAgICAgLy8gc2hvdyB0aGUgcHJvbXB0XHJcbiAgICAgICAgICAgIHByb21wdC5wcm9tcHQoKTtcclxuICAgICAgICAgICAgLy8gd2FpdCBmb3IgdGhlIHVzZXIgdG8gcmVzcG9uZCB0byB0aGUgcHJvbXB0XHJcbiAgICAgICAgICAgIHRoaXMuZGVmZXJyZWRQcm9tcHQudXNlckNob2ljZVxyXG4gICAgICAgICAgICAgICAgLnRoZW4oKGNob2ljZVJlc3VsdDogYW55KSA9PiB7XHJcbiAgICAgICAgICAgICAgICAgICAgaWYgKGNob2ljZVJlc3VsdC5vdXRjb21lID09PSBcImFjY2VwdGVkXCIpIHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgbmV3IE1vbml0b3JpbmdTZXJ2aWNlKCkubG9nU2VydmljZVdvcmtlcihcIkluc3RhbGxhdGlvbiBhY2NlcHRlZFwiLCB0cnVlKTtcclxuICAgICAgICAgICAgICAgICAgICB9IGVsc2Uge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICBuZXcgTW9uaXRvcmluZ1NlcnZpY2UoKS5sb2dTZXJ2aWNlV29ya2VyKFwiSW5zdGFsbGF0aW9uIHJlamVjdGVkXCIsIGZhbHNlKTtcclxuICAgICAgICAgICAgICAgICAgICB9XHJcbiAgICAgICAgICAgICAgICAgICAgcHJvbXB0ID0gbnVsbDtcclxuICAgICAgICAgICAgICAgIH0gKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcbn1cclxuIiwi77u/XCJ1c2Ugc3RyaWN0XCI7XHJcbmltcG9ydCAqIGFzIENvb2tpZXMgZnJvbSBcImVzLWNvb2tpZVwiO1xyXG5pbXBvcnQgeyBIZWxwZXJzIH0gZnJvbSBcIi4vbmxhcHAtaGVscGVyc1wiO1xyXG5cclxuZXhwb3J0IGNsYXNzIFVzZXJTZXR0aW5ncyB7XHJcblxyXG4gICAgcHJpdmF0ZSByZWFkb25seSBjb29raWVMYW5ndWFnZUtleSA9IFwibGFuZ1wiO1xyXG4gICAgcHJpdmF0ZSByZWFkb25seSBjb29raWVUb3duS2V5ID0gXCJ0b3duXCI7XHJcbiAgICBwcml2YXRlIHJlYWRvbmx5IGNvb2tpZVNwbGFzaFZpZXdlZEtleSA9IFwic3BsdndkXCI7XHJcbiAgICBwcml2YXRlIHJlYWRvbmx5IGNvb2tpZUNvb2tpZUNvbnNlbnRBY2NlcHRlZEtleSA9IFwiY2NBY2NlcHRlZFwiO1xyXG4gICAgcHJpdmF0ZSByZWFkb25seSBjb29raWVEaXNjbGFpbWVyQWNjZXB0ZWRLZXkgPSBcImRpc2NsYWltZXJBY2NlcHRlZFwiO1xyXG4gICBcclxuICAgIGdldCBsYW5ndWFnZSgpOiBzdHJpbmcgeyByZXR1cm4gQ29va2llcy5nZXQodGhpcy5jb29raWVMYW5ndWFnZUtleSk7IH07XHJcbiAgICBzZXQgbGFuZ3VhZ2UodmFsOiBzdHJpbmcpIHtcclxuICAgICAgICBpZiAodmFsKVxyXG4gICAgICAgICAgICBDb29raWVzLnNldCh0aGlzLmNvb2tpZUxhbmd1YWdlS2V5LCB2YWwsIHsgZXhwaXJlczogMTAwMCwgc2VjdXJlOiB0cnVlIH0pO1xyXG4gICAgICAgIGVsc2VcclxuICAgICAgICAgICAgQ29va2llcy5yZW1vdmUodGhpcy5jb29raWVMYW5ndWFnZUtleSk7XHJcbiAgICB9O1xyXG5cclxuICAgIGdldCB0b3duKCk6IHN0cmluZyB7IHJldHVybiBDb29raWVzLmdldCh0aGlzLmNvb2tpZVRvd25LZXkpOyB9O1xyXG4gICAgc2V0IHRvd24odmFsOiBzdHJpbmcpIHtcclxuICAgICAgICBpZiAodmFsKSB7XHJcbiAgICAgICAgICAgIHRoaXMuc3BsYXNoVmlld2VkID0gZmFsc2U7XHJcbiAgICAgICAgICAgIENvb2tpZXMuc2V0KHRoaXMuY29va2llVG93bktleSwgdmFsLCB7IGV4cGlyZXM6IDEwMDAsIHNlY3VyZTogdHJ1ZSB9KTtcclxuICAgICAgICB9XHJcbiAgICAgICAgZWxzZSB7IFxyXG4gICAgICAgICAgICBDb29raWVzLnJlbW92ZSh0aGlzLmNvb2tpZVRvd25LZXkpO1xyXG4gICAgICAgIH1cclxuICAgIH07XHJcblxyXG4gICAgZ2V0IHNwbGFzaFZpZXdlZCgpOiBib29sZWFuIHsgcmV0dXJuIENvb2tpZXMuZ2V0KHRoaXMuY29va2llU3BsYXNoVmlld2VkS2V5KSA9PT0gXCIxXCI7IH07XHJcbiAgICBzZXQgc3BsYXNoVmlld2VkKHZhbDogYm9vbGVhbikge1xyXG4gICAgICAgIENvb2tpZXMuc2V0KHRoaXMuY29va2llU3BsYXNoVmlld2VkS2V5LCB2YWwgPyBcIjFcIiA6IFwiMFwiLCB7IGV4cGlyZXM6IDEwMDAsIHNlY3VyZTogdHJ1ZSB9KTtcclxuICAgIH07XHJcblxyXG4gICAgZ2V0IGNvb2tpZUNvbnNlbnRBY2NlcHRlZCgpOiBib29sZWFuIHsgcmV0dXJuIENvb2tpZXMuZ2V0KHRoaXMuY29va2llQ29va2llQ29uc2VudEFjY2VwdGVkS2V5KSA9PT0gXCIxXCI7IH07XHJcbiAgICBzZXQgY29va2llQ29uc2VudEFjY2VwdGVkKHZhbDogYm9vbGVhbikge1xyXG4gICAgICAgIENvb2tpZXMuc2V0KHRoaXMuY29va2llQ29va2llQ29uc2VudEFjY2VwdGVkS2V5LCB2YWwgPyBcIjFcIiA6IFwiMFwiLCB7IGV4cGlyZXM6IDEwMDAsIHNlY3VyZTogdHJ1ZSB9KTtcclxuICAgIH07XHJcblxyXG4gICAgZ2V0IGRpc2NsYWltZXJBY2NlcHRlZCgpOiBib29sZWFuIHsgcmV0dXJuIENvb2tpZXMuZ2V0KHRoaXMuY29va2llRGlzY2xhaW1lckFjY2VwdGVkS2V5KSA9PT0gXCIxXCI7IH07XHJcbiAgICBzZXQgZGlzY2xhaW1lckFjY2VwdGVkKHZhbDogYm9vbGVhbikge1xyXG4gICAgICAgIENvb2tpZXMuc2V0KHRoaXMuY29va2llRGlzY2xhaW1lckFjY2VwdGVkS2V5LCB2YWwgPyBcIjFcIiA6IFwiMFwiLCB7IGV4cGlyZXM6IDEwMDAsIHNlY3VyZTogdHJ1ZSB9KTtcclxuICAgIH07XHJcblxyXG4gICAgaXNWYWxpZCgpOiBib29sZWFuIHtcclxuICAgICAgICByZXR1cm4gdGhpcy5sYW5ndWFnZSAhPSB1bmRlZmluZWQgJiYgdGhpcy50b3duICE9IHVuZGVmaW5lZDtcclxuICAgIH1cclxuXHJcbiAgICB0b0hvbWVVcmwoKTogc3RyaW5nIHtcclxuICAgICAgICBjb25zdCBwcm90b2NvbCA9IHdpbmRvdy5sb2NhdGlvbi5wcm90b2NvbDtcclxuICAgICAgICBjb25zdCBob3N0ID0gd2luZG93LmxvY2F0aW9uLmhvc3Q7XHJcbiAgICAgICAgXHJcbiAgICAgICAgY29uc3QgdXJsID0gYCR7cHJvdG9jb2x9Ly8ke2hvc3R9JHt0aGlzLnRvUGF0aE5hbWUoKX1gO1xyXG4gICAgICAgIHJldHVybiB1cmwudG9Mb3dlckNhc2UoKTtcclxuICAgIH1cclxuXHJcbiAgICB0b1BhdGhOYW1lKCk6IHN0cmluZyB7XHJcbiAgICAgICAgY29uc3QgcGF0aE5hbWUgPSB0aGlzLmlzVmFsaWQoKSA/IGAvJHt0aGlzLmxhbmd1YWdlfS8ke0hlbHBlcnMudG9Eb21haW5OYW1lKHRoaXMudG93bil9YCA6IFwiXCI7XHJcbiAgICAgICAgcmV0dXJuIHBhdGhOYW1lLnRvTG93ZXJDYXNlKCk7XHJcbiAgICB9XHJcbn1cclxuIiwi77u/XCJ1c2Ugc3RyaWN0XCI7XHJcbmltcG9ydCB7IFVzZXJTZXR0aW5ncyB9IGZyb20gXCIuL25sYXBwLXVzZXJzZXR0aW5nc1wiO1xyXG5pbXBvcnQgeyBNb25pdG9yaW5nU2VydmljZSB9IGZyb20gXCIuL25sYXBwLW1vbml0b3Jpbmcuc2VydmljZVwiO1xyXG5pbXBvcnQgeyBWaWV3QmFzZSB9IGZyb20gXCIuL25sYXBwLXZpZXdcIjtcclxuXHJcbmV4cG9ydCBjbGFzcyBIdG1sNDA0VmlldyBleHRlbmRzIFZpZXdCYXNlIHtcclxuXHJcbiAgICBjb25zdHJ1Y3Rvcihtb25pdG9yaW5nOiBNb25pdG9yaW5nU2VydmljZSwgdXNlclNldHRpbmdzOiBVc2VyU2V0dGluZ3MsIHZpZXdOYW1lIDogc3RyaW5nKSB7XHJcbiAgICAgICAgc3VwZXIobW9uaXRvcmluZywgdXNlclNldHRpbmdzKTtcclxuICAgICAgICB0aGlzLl92aWV3TmFtZSA9IHZpZXdOYW1lO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgX3ZpZXdOYW1lOiBzdHJpbmc7XHJcblxyXG4gICAgdmlld05hbWUoKTogc3RyaW5nIHtcclxuICAgICAgICByZXR1cm4gdGhpcy5fdmlld05hbWU7XHJcbiAgICB9XHJcblxyXG4gICAgaW5pdCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5pbml0KCk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9hZCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5sb2FkKCk7XHJcbiAgICB9XHJcbn0iLCLvu79cInVzZSBzdHJpY3RcIjtcclxuaW1wb3J0IHsgVXNlclNldHRpbmdzIH0gZnJvbSBcIi4vbmxhcHAtdXNlcnNldHRpbmdzXCI7XHJcbmltcG9ydCB7IE1vbml0b3JpbmdTZXJ2aWNlIH0gZnJvbSBcIi4vbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlXCI7XHJcbmltcG9ydCB7IFZpZXdCYXNlIH0gZnJvbSBcIi4vbmxhcHAtdmlld1wiO1xyXG5pbXBvcnQgeyBIZWxwZXJzIH0gZnJvbSBcIi4vbmxhcHAtaGVscGVyc1wiO1xyXG5cclxuZXhwb3J0IGNsYXNzIENhdGVnb3JpZVZpZXcgZXh0ZW5kcyBWaWV3QmFzZSB7XHJcblxyXG4gICAgY29uc3RydWN0b3IobW9uaXRvcmluZzogTW9uaXRvcmluZ1NlcnZpY2UsIHVzZXJTZXR0aW5nczogVXNlclNldHRpbmdzKSB7XHJcbiAgICAgICAgc3VwZXIobW9uaXRvcmluZywgdXNlclNldHRpbmdzKTtcclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIF9jb250ZW50Vmlld05hbWU6IHN0cmluZztcclxuICAgIHNldENvbnRlbnRWaWV3TmFtZShuYW1lOiBzdHJpbmcpIHtcclxuICAgICAgICB0aGlzLl9jb250ZW50Vmlld05hbWUgPSBuYW1lO1xyXG4gICAgfVxyXG5cclxuICAgIHZpZXdOYW1lKCk6IHN0cmluZyB7XHJcbiAgICAgICAgcmV0dXJuIHRoaXMuX2NvbnRlbnRWaWV3TmFtZSB8fCBcIkxpc3RcIjtcclxuICAgIH1cclxuXHJcbiAgICBpbml0KCk6IHZvaWQge1xyXG4gICAgICAgIHN1cGVyLmluaXQoKTtcclxuXHJcbiAgICAgICAgdGhpcy5iaW5kT25DbGljayhcIi51cFwiLCBIZWxwZXJzLnNjcm9sbFRvVG9wKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkVudGVyKFwiLnVwXCIsIEhlbHBlcnMuc2Nyb2xsVG9Ub3ApO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuYmFja1wiLCB0aGlzLm5hdmlnYXRlQmFjayk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25BcnJvd1JpZ2h0KHRoaXMubmF2aWdhdGVBY3RpdmVFbGVtZW50KTtcclxuICAgIH1cclxuXHJcbiAgICBsb2FkKCk6IHZvaWQge1xyXG4gICAgICAgIHN1cGVyLmxvYWQoKTtcclxuICAgICAgICBIZWxwZXJzLnNob3dTY3JvbGxUb1RvcEJ1dHRvbigpO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgbmF2aWdhdGVCYWNrKGV2dDogRXZlbnQpOiB2b2lkIHtcclxuICAgICAgICBpZiAoZXZ0ICYmIDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkge1xyXG4gICAgICAgICAgICBldnQucHJldmVudERlZmF1bHQoKTtcclxuICAgICAgICAgICAgZXZ0LnN0b3BQcm9wYWdhdGlvbigpO1xyXG5cclxuICAgICAgICAgICAgZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuYWRkKFwiaG9tZVwiKTtcclxuICAgICAgICAgICAgZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuYWRkKFwibGVhdmluZ1wiKTtcclxuXHJcbiAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LnJlbW92ZShcImNhdC0xXCIpO1xyXG4gICAgICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5yZW1vdmUoXCJjYXQtMlwiKTtcclxuICAgICAgICAgICAgZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QucmVtb3ZlKFwiY2F0LTNcIik7XHJcbiAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LnJlbW92ZShcImNhdC00XCIpO1xyXG4gICAgICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5yZW1vdmUoXCJjYXQtNVwiKTtcclxuICAgICAgICAgICAgZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QucmVtb3ZlKFwiY2F0LTZcIik7XHJcbiAgICAgICAgICAgIFxyXG4gICAgICAgICAgICBjb25zdCB1cmwgPSAoPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KS5nZXRBdHRyaWJ1dGUoXCJocmVmXCIpO1xyXG5cclxuICAgICAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7XHJcbiAgICAgICAgICAgICAgICB3aW5kb3cubG9jYXRpb24uaHJlZiA9IHVybDtcclxuICAgICAgICAgICAgfSwgNTAwKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcbn0iLCLvu79cInVzZSBzdHJpY3RcIjtcclxuaW1wb3J0IHsgVXNlclNldHRpbmdzIH0gZnJvbSBcIi4vbmxhcHAtdXNlcnNldHRpbmdzXCI7XHJcbmltcG9ydCB7IE1vbml0b3JpbmdTZXJ2aWNlIH0gZnJvbSBcIi4vbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlXCI7XHJcbmltcG9ydCB7IFZpZXdCYXNlIH0gZnJvbSBcIi4vbmxhcHAtdmlld1wiO1xyXG5pbXBvcnQgeyBIZWxwZXJzIH0gZnJvbSBcIi4vbmxhcHAtaGVscGVyc1wiO1xyXG5cclxuZXhwb3J0IGNsYXNzIEhvbWVWaWV3IGV4dGVuZHMgVmlld0Jhc2Uge1xyXG5cclxuICAgIGNvbnN0cnVjdG9yKG1vbml0b3Jpbmc6IE1vbml0b3JpbmdTZXJ2aWNlLCB1c2VyU2V0dGluZ3M6IFVzZXJTZXR0aW5ncykge1xyXG4gICAgICAgIHN1cGVyKG1vbml0b3JpbmcsIHVzZXJTZXR0aW5ncyk7XHJcbiAgICB9XHJcblxyXG4gICAgdmlld05hbWUoKTogc3RyaW5nIHtcclxuICAgICAgICByZXR1cm4gXCJIb21lXCI7XHJcbiAgICB9XHJcblxyXG4gICAgaW5pdCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5pbml0KCk7XHJcblxyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIjbGFuZ3VhZ2VcIiwgdGhpcy5wb3B1cExhbmd1YWdlKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkNsaWNrKFwiI3Rvd25cIiwgdGhpcy5wb3B1cFRvd24pO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIubWVudVwiLCB0aGlzLnRvZ2dsZU1lbnUpO1xyXG4gICAgICAgIHRoaXMuYmluZE9uRW50ZXIoXCIubWVudVwiLCB0aGlzLnRvZ2dsZU1lbnUpO1xyXG5cclxuICAgICAgICB0aGlzLmJpbmRPbkNsaWNrKFwiLnBvcHVwIC5jbG9zZVwiLCB0aGlzLmNsb3NlUG9wdXApO1xyXG4gICAgICAgIHRoaXMuYmluZE9uRW50ZXIoXCIucG9wdXAgLmNsb3NlXCIsIHRoaXMuY2xvc2VQb3B1cCk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25Fc2NhcGUodGhpcy5jbG9zZVBvcHVwT3JTZXR0aW5nc1BhbmVsKTtcclxuXHJcbiAgICAgICAgdGhpcy5iaW5kT25DbGljayhcIi5wb3B1cCBhXCIsIHRoaXMucmVkaXJlY3RUb0hvbWUpO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIud3JhcHBlclwiLCB0aGlzLmNsb3NlTWVudSk7XHJcblxyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuY2F0ZWdvcmllcyB1bCBsaSBhXCIsIHRoaXMub3BlbkNhdGVnb3J5KTtcclxuICAgICAgICB0aGlzLmJpbmRPbk1vdXNlRG93bihcIi5jYXRlZ29yaWVzIHVsIGxpIGFcIiwgdGhpcy5oaWdobGlnaHRDYXRlZ29yeSk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25Ub3VjaFN0YXJ0KFwiLmNhdGVnb3JpZXMgdWwgbGkgYVwiLCB0aGlzLmhpZ2hsaWdodENhdGVnb3J5KTtcclxuXHJcbiAgICAgICAgdGhpcy5iaW5kT25BcnJvd1VwKHRoaXMuc2VsZWN0UHJldmlvdXNMaXN0SXRlbSk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25BcnJvd0Rvd24odGhpcy5zZWxlY3ROZXh0TGlzdEl0ZW0pO1xyXG4gICAgfVxyXG5cclxuICAgIGxvYWQoKTogdm9pZCB7XHJcbiAgICAgICAgc3VwZXIubG9hZCgpO1xyXG4gICAgICAgIHRoaXMuc2hvd1NwbGFzaCgpO1xyXG4gICAgfVxyXG5cclxuICAgIHNob3dTcGxhc2goKTogdm9pZCB7XHJcbiAgICAgICAgaWYgKHRoaXMudXNlclNldHRpbmdzLnNwbGFzaFZpZXdlZCkge1xyXG4gICAgICAgICAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZChcInNwbGFzaFwiKS5jbGFzc0xpc3QuYWRkKFwic2hvd25cIik7XHJcbiAgICAgICAgfVxyXG4gICAgICAgIHRoaXMudXNlclNldHRpbmdzLnNwbGFzaFZpZXdlZCA9IHRydWU7XHJcbiAgICB9XHJcblxyXG4gICAgc3RvcmVTZXR0aW5ncyA9IChldnQ6IEV2ZW50KTogdm9pZCA9PiB7XHJcbiAgICAgICAgaWYgKGV2dCAmJiA8SFRNTEVsZW1lbnQ+ZXZ0LmN1cnJlbnRUYXJnZXQpIHtcclxuICAgICAgICAgICAgZXZ0LnByZXZlbnREZWZhdWx0KCk7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgIGNvbnN0IGxhbmd1YWdlID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLWxhbmd1YWdlXCIpO1xyXG4gICAgICAgICAgICBjb25zdCB0b3duID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRvd25cIik7XHJcblxyXG4gICAgICAgICAgICAvLyBzdG9yZSB1c2VyIHNldHRpbmdzXHJcbiAgICAgICAgICAgIGlmIChsYW5ndWFnZSAmJiB0aGlzLnVzZXJTZXR0aW5ncy5sYW5ndWFnZSAhPT0gbGFuZ3VhZ2UpIHtcclxuICAgICAgICAgICAgICAgIC8vIHN0b3JlIGxhbmd1YWdlXHJcbiAgICAgICAgICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncy5sYW5ndWFnZSA9IGxhbmd1YWdlO1xyXG5cclxuICAgICAgICAgICAgICAgIC8vIHNldCBhY3RpdmUgbGFuZ3VhZ2VcclxuICAgICAgICAgICAgICAgIEhlbHBlcnMucmVtb3ZlQ2xhc3NBbGwoXCIjbGFuZ3VhZ2UgYnV0dG9uXCIsIFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICAgICAgZWxlbS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgICAgIC8vIHNob3cgdG93biBwYW5lbFxyXG4gICAgICAgICAgICAgICAgY29uc3QgbGFuZ3VhZ2VEaXZzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChcIiN0b3duIC5sYW5nXCIpO1xyXG4gICAgICAgICAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsYW5ndWFnZURpdnMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgICAgICAgICBsYW5ndWFnZURpdnNbaV0uY2xhc3NMaXN0LnJlbW92ZShcImFjdGl2ZVwiKTtcclxuICAgICAgICAgICAgICAgICAgICBpZiAobGFuZ3VhZ2VEaXZzW2ldLmNsYXNzTGlzdC5jb250YWlucyhsYW5ndWFnZSkpIHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgbGFuZ3VhZ2VEaXZzW2ldLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICB9XHJcblxyXG4gICAgICAgICAgICBpZiAodG93biAmJiB0aGlzLnVzZXJTZXR0aW5ncy50b3duICE9PSB0b3duKSB7XHJcbiAgICAgICAgICAgICAgICAvLyBzdG9yZSB0b3duXHJcbiAgICAgICAgICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncy50b3duID0gdG93bjtcclxuXHJcbiAgICAgICAgICAgICAgICAvLyBzZXQgYWN0aXZlIHRvd25cclxuICAgICAgICAgICAgICAgIGNvbnN0IGxhbmd1YWdlQW5jaG9ycyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoXCIjdG93biAubGFuZyBhXCIpO1xyXG4gICAgICAgICAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsYW5ndWFnZUFuY2hvcnMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgICAgICAgICBsYW5ndWFnZUFuY2hvcnNbaV0uY2xhc3NMaXN0LnJlbW92ZShcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgICAgICAgICAgaWYgKGxhbmd1YWdlQW5jaG9yc1tpXS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRvd25cIikgPT09IHRvd24pIHtcclxuICAgICAgICAgICAgICAgICAgICAgICAgbGFuZ3VhZ2VBbmNob3JzW2ldLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHRvZ2dsZU1lbnUgPSAoZXZ0OiBFdmVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGNvbnN0IHNldHRpbmdzUGFuZWwgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKFwic2V0dGluZ3NcIilbMF07XHJcbiAgICAgICAgY29uc3Qgc2V0dGluZ3NBY3RpdmUgPSBzZXR0aW5nc1BhbmVsLmNsYXNzTGlzdC5jb250YWlucyhcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgY29uc3QgY3VycmVjdFVybCA9IHdpbmRvdy5sb2NhdGlvbi5wYXRobmFtZTtcclxuICAgICAgICBjb25zdCBuZXdVcmwgPSB0aGlzLnVzZXJTZXR0aW5ncy50b1BhdGhOYW1lKCk7XHJcblxyXG4gICAgICAgIGlmIChzZXR0aW5nc0FjdGl2ZSAmJiAoY3VycmVjdFVybCAhPT0gbmV3VXJsKSkge1xyXG4gICAgICAgICAgICB0aGlzLmdvSG9tZSgpO1xyXG4gICAgICAgICAgICByZXR1cm47XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICAvLyB0b2dnbGUgY2xhc3Nlc1xyXG4gICAgICAgIHNldHRpbmdzUGFuZWwuY2xhc3NMaXN0LnRvZ2dsZShcImFjdGl2ZVwiKTtcclxuICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC50b2dnbGUoXCJtZW51b3BlblwiKTtcclxuXHJcbiAgICAgICAgaWYgKHNldHRpbmdzQWN0aXZlKSB7XHJcbiAgICAgICAgICAgIEhlbHBlcnMucmVtb3ZlUXVlcnlQYXJhbUZyb21Vcmwod2luZG93LmxvY2F0aW9uLmhyZWYsIFwic2V0dGluZ3NcIik7XHJcbiAgICAgICAgfSBlbHNlIHtcclxuICAgICAgICAgICAgSGVscGVycy5hZGRRdWVyeVBhcmFtVG9Vcmwod2luZG93LmxvY2F0aW9uLmhyZWYsIFwic2V0dGluZ3NcIiwgXCIxXCIpO1xyXG4gICAgICAgIH1cclxuXHJcbiAgICAgICAgLy8gdG9nZ2xlIGFyaWEtZXhwYW5kZWRcclxuICAgICAgICBjb25zdCBtZW51ID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoXCJtZW51XCIpO1xyXG4gICAgICAgIGNvbnN0IG1lbnVBcmlhRXhwYW5kZWQgPSBtZW51LmdldEF0dHJpYnV0ZShcImFyaWEtZXhwYW5kZWRcIikgPT09IFwidHJ1ZVwiO1xyXG4gICAgICAgIG1lbnUuc2V0QXR0cmlidXRlKFwiYXJpYS1leHBhbmRlZFwiLCBtZW51QXJpYUV4cGFuZGVkID8gXCJmYWxzZVwiIDogXCJ0cnVlXCIpO1xyXG5cclxuICAgICAgICAvLyB0b2dnbGUgYXJpYS1oaWRkZW5cclxuICAgICAgICBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwibWFpblwiKS5zZXRBdHRyaWJ1dGUoXCJhcmlhLWhpZGRlblwiLCBtZW51QXJpYUV4cGFuZGVkID8gXCJmYWxzZVwiIDogXCJ0cnVlXCIpO1xyXG4gICAgICAgIGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCJoZWFkZXJcIikuc2V0QXR0cmlidXRlKFwiYXJpYS1oaWRkZW5cIiwgbWVudUFyaWFFeHBhbmRlZCA/IFwiZmFsc2VcIiA6IFwidHJ1ZVwiKTtcclxuICAgICAgICBzZXR0aW5nc1BhbmVsLnNldEF0dHJpYnV0ZShcImFyaWEtaGlkZGVuXCIsIG1lbnVBcmlhRXhwYW5kZWQgPyBcInRydWVcIiA6IFwiZmFsc2VcIik7XHJcblxyXG4gICAgICAgIC8vIGNyZWF0ZSBrZXlib2FyZCB0cmFwXHJcbiAgICAgICAgaWYgKCFtZW51QXJpYUV4cGFuZGVkKSB7XHJcbiAgICAgICAgICAgIC8vIHRvIHBvcHVwXHJcbiAgICAgICAgICAgIEhlbHBlcnMudG9nZ2xlVGFiSW5kZXgoXCIuc2V0dGluZ3MsIC5zZXR0aW5ncyBhLCAuc2V0dGluZ3MgLm1lbnVcIiwgXCJoZWFkZXIgaW5wdXQsIGhlYWRlciBidXR0b24sIG1haW4gYVwiKTtcclxuICAgICAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7ICg8SFRNTEVsZW1lbnQ+ZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5zZXR0aW5nc1wiKSkuZm9jdXMoKTsgfSwgNTAwKTtcclxuICAgICAgICB9XHJcbiAgICAgICAgZWxzZSB7XHJcbiAgICAgICAgICAgIC8vIHRvIHBhZ2VcclxuICAgICAgICAgICAgSGVscGVycy50b2dnbGVUYWJJbmRleChcImhlYWRlciBpbnB1dCwgaGVhZGVyIGJ1dHRvbiwgbWFpbiBhXCIsIFwiLnNldHRpbmdzLCAuc2V0dGluZ3MgYSwgLnNldHRpbmdzIC5tZW51XCIpO1xyXG4gICAgICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHsgKDxIVE1MRWxlbWVudD5kb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwibWFpblwiKSkuZm9jdXMoKTsgfSwgNTAwKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgY2xvc2VNZW51ID0gKGV2dDogRXZlbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuY29udGFpbnMoXCJtZW51b3BlblwiKSkge1xyXG4gICAgICAgICAgICB0aGlzLnRvZ2dsZU1lbnUobnVsbCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHBvcHVwTGFuZ3VhZ2UgPSAoZXZ0OiBFdmVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG5cclxuICAgICAgICBjb25zdCBpc09mZmxpbmUgPSAhIWRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCJib2R5Lm9mZmxpbmVcIik7XHJcbiAgICAgICAgaWYgKGlzT2ZmbGluZSkge1xyXG4gICAgICAgICAgICByZXR1cm47XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICB0aGlzLmNsb3NlUG9wdXAobnVsbCk7XHJcblxyXG4gICAgICAgIGNvbnN0IHBvcHVwID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5wb3B1cC5sYW5ndWFnZVwiKTtcclxuICAgICAgICBpZiAocG9wdXApIHtcclxuICAgICAgICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoXCJwb3B1cGJnXCIpLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgIHBvcHVwLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcblxyXG4gICAgICAgICAgICBIZWxwZXJzLnRvZ2dsZVRhYkluZGV4KFwiLnBvcHVwLmxhbmd1YWdlLmFjdGl2ZSBhLCAucG9wdXAubGFuZ3VhZ2UuYWN0aXZlIC5jbG9zZVwiLCBcIi5zZXR0aW5ncywgLnNldHRpbmdzIGEsIC5wb3B1cC50b3duIGEsIC5wb3B1cC50b3duIC5jbG9zZVwiKTtcclxuICAgICAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7ICg8SFRNTEVsZW1lbnQ+ZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5wb3B1cC5sYW5ndWFnZS5hY3RpdmUgbGkgYS5hY3RpdmVcIikpLmZvY3VzKCk7IH0sIDUwMCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHBvcHVwVG93biA9IChldnQ6IEV2ZW50KTogdm9pZCA9PiB7XHJcbiAgICAgICAgZXZ0LnByZXZlbnREZWZhdWx0KCk7XHJcblxyXG4gICAgICAgIGNvbnN0IGlzT2ZmbGluZSA9ICEhZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcImJvZHkub2ZmbGluZVwiKTtcclxuICAgICAgICBpZiAoaXNPZmZsaW5lKSB7XHJcbiAgICAgICAgICAgIHJldHVybjtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIHRoaXMuY2xvc2VQb3B1cChudWxsKTtcclxuXHJcbiAgICAgICAgY29uc3QgcG9wdXAgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwiLnBvcHVwLnRvd25cIik7XHJcbiAgICAgICAgaWYgKHBvcHVwKSB7XHJcbiAgICAgICAgICAgIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKFwicG9wdXBiZ1wiKS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICBwb3B1cC5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgSGVscGVycy50b2dnbGVUYWJJbmRleChcIi5wb3B1cC50b3duLmFjdGl2ZSBhLCAucG9wdXAudG93bi5hY3RpdmUgLmNsb3NlXCIsIFwiLnNldHRpbmdzLCAuc2V0dGluZ3MgYSwgLnBvcHVwLmxhbmd1YWdlIGEsIC5wb3B1cC5sYW5ndWFnZSAuY2xvc2VcIik7XHJcbiAgICAgICAgICAgIHNldFRpbWVvdXQoKCkgPT4geyAoPEhUTUxFbGVtZW50PmRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIucG9wdXAudG93bi5hY3RpdmUgbGkgYS5hY3RpdmVcIikpLmZvY3VzKCk7IH0sIDUwMCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGNsb3NlUG9wdXAgPSAoZXZ0OiBFdmVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGNvbnN0IGFjdGl2ZVBvcHVwID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5wb3B1cC5hY3RpdmVcIik7XHJcbiAgICAgICAgaWYgKCFhY3RpdmVQb3B1cCkge1xyXG4gICAgICAgICAgICByZXR1cm47XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBjb25zdCBpc0xhbmd1YWdlUG9wdXAgPSBhY3RpdmVQb3B1cC5jbGFzc0xpc3QuY29udGFpbnMoXCJsYW5ndWFnZVwiKTtcclxuICAgICAgICBhY3RpdmVQb3B1cC5jbGFzc0xpc3QucmVtb3ZlKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICBIZWxwZXJzLnRvZ2dsZVRhYkluZGV4KFwiLnNldHRpbmdzLCAuc2V0dGluZ3MgYVwiLCBcIi5wb3B1cC5hY3RpdmUgYVwiKTtcclxuXHJcbiAgICAgICAgLy8gaGlkZSBiYWNrZ3JvdW5kXHJcbiAgICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoXCJwb3B1cGJnXCIpLmNsYXNzTGlzdC5yZW1vdmUoXCJhY3RpdmVcIik7XHJcblxyXG4gICAgICAgIC8vIGZvY3VzIHByZXZpb3VzIHNlbGVjdGVkIGl0ZW1cclxuICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHsgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoaXNMYW5ndWFnZVBvcHVwID8gXCJsYW5ndWFnZVwiIDogXCJ0b3duXCIpLmZvY3VzKCk7IH0sIDUwMCk7XHJcbiAgICB9XHJcblxyXG4gICAgY2xvc2VQb3B1cE9yU2V0dGluZ3NQYW5lbCA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBhY3RpdmVQb3B1cCA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIucG9wdXAuYWN0aXZlXCIpO1xyXG4gICAgICAgIGlmIChhY3RpdmVQb3B1cCkge1xyXG4gICAgICAgICAgICB0aGlzLmNsb3NlUG9wdXAobnVsbCk7XHJcbiAgICAgICAgICAgIHJldHVybjtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIHRoaXMuY2xvc2VNZW51KG51bGwpO1xyXG4gICAgfVxyXG5cclxuICAgIHJlZGlyZWN0VG9Ib21lID0gKGV2dDogRXZlbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoZXZ0ICYmIDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkge1xyXG4gICAgICAgICAgICBldnQucHJldmVudERlZmF1bHQoKTtcclxuXHJcbiAgICAgICAgICAgIGNvbnN0IGVsZW0gPSAoPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KTtcclxuICAgICAgICAgICAgaWYgKGVsZW0uY2xhc3NMaXN0LmNvbnRhaW5zKFwiYWN0aXZlXCIpKSB7XHJcbiAgICAgICAgICAgICAgICAvLyBhbHJlYWR5IGFjdGl2ZSwgbm8gbmF2aWdhdGlvblxyXG4gICAgICAgICAgICAgICAgcmV0dXJuO1xyXG4gICAgICAgICAgICB9XHJcblxyXG4gICAgICAgICAgICAvLyBzdG9yZSB1c2VyIHNldHRpbmdzXHJcbiAgICAgICAgICAgIGNvbnN0IGxhbmd1YWdlID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLWxhbmd1YWdlXCIpO1xyXG4gICAgICAgICAgICBjb25zdCB0b3duID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRvd25cIik7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBwcmV2U2VsZWN0aW9uID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5wb3B1cC5hY3RpdmUgYS5hY3RpdmVcIik7XHJcbiAgICAgICAgICAgIHByZXZTZWxlY3Rpb24uY2xhc3NMaXN0LnJlbW92ZShcImFjdGl2ZVwiKTtcclxuICAgICAgICAgICAgXHJcbiAgICAgICAgICAgIGVsZW0uY2xhc3NMaXN0LmFkZChcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgIGlmIChsYW5ndWFnZSlcclxuICAgICAgICAgICAgICAgIHRoaXMudXNlclNldHRpbmdzLmxhbmd1YWdlID0gbGFuZ3VhZ2U7XHJcblxyXG4gICAgICAgICAgICBpZiAodG93bilcclxuICAgICAgICAgICAgICAgIHRoaXMudXNlclNldHRpbmdzLnRvd24gPSB0b3duO1xyXG5cclxuICAgICAgICAgICAgaWYgKHRoaXMudXNlclNldHRpbmdzLmlzVmFsaWQoKSkge1xyXG4gICAgICAgICAgICAgICAgY29uc3QgdXJsID0gdGhpcy51c2VyU2V0dGluZ3MudG9Ib21lVXJsKCk7XHJcblxyXG5cclxuICAgICAgICAgICAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgICAgIHRoaXMuY2xvc2VQb3B1cChudWxsKTtcclxuICAgICAgICAgICAgICAgICAgICB3aW5kb3cubG9jYXRpb24uaHJlZiA9IHVybCArIFwiP3NldHRpbmdzPTFcIjtcclxuICAgICAgICAgICAgICAgIH0sIDQwMCk7XHJcbiAgICAgICAgICAgIH1cclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgaGlnaGxpZ2h0Q2F0ZWdvcnkgPSAoZXZ0OiBFdmVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGNvbnN0IGVsZW0gPSAoPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KTtcclxuXHJcbiAgICAgICAgICAgIEhlbHBlcnMucmVtb3ZlQ2xhc3NBbGwoXCIuY2F0ZWdvcmllcyB1bCBsaVwiLCBcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgIGVsZW0ucGFyZW50RWxlbWVudC5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBvcGVuQ2F0ZWdvcnkoZXZ0OiBFdmVudCk6IHZvaWQge1xyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG4gICAgICAgICAgICBldnQuc3RvcFByb3BhZ2F0aW9uKCk7XHJcblxyXG4gICAgICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5hZGQoXCJsZWF2aW5nXCIpO1xyXG5cclxuICAgICAgICAgICAgY29uc3QgY2F0ID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkucGFyZW50RWxlbWVudC5jbGFzc0xpc3RbMF07XHJcbiAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LmFkZChjYXQpO1xyXG5cclxuICAgICAgICAgICAgY29uc3QgdXJsID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkuZ2V0QXR0cmlidXRlKFwiaHJlZlwiKTtcclxuXHJcbiAgICAgICAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgd2luZG93LmxvY2F0aW9uLmhyZWYgPSB1cmw7XHJcbiAgICAgICAgICAgIH0sIDQwMCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgZ29Ib21lID0gKCk6IHZvaWQgPT4ge1xyXG5cclxuICAgICAgICBpZiAodGhpcy51c2VyU2V0dGluZ3MuaXNWYWxpZCgpKSB7XHJcbiAgICAgICAgICAgIGNvbnN0IHVybCA9IHRoaXMudXNlclNldHRpbmdzLnRvSG9tZVVybCgpO1xyXG4gICAgICAgICAgICB3aW5kb3cubG9jYXRpb24uaHJlZiA9IHVybDtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBzZWxlY3RQcmV2aW91c0xpc3RJdGVtID0gKCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGNvbnN0IGxpc3RJdGVtcyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoXCIucG9wdXAuYWN0aXZlIGFcIik7XHJcbiAgICAgICAgbGV0IGlkeCA9IGxpc3RJdGVtcy5sZW5ndGggKyAxO1xyXG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbGlzdEl0ZW1zLmxlbmd0aDsgaSsrKSB7XHJcbiAgICAgICAgICAgIGlmICgoPEhUTUxFbGVtZW50Pmxpc3RJdGVtc1tpXSkgPT09IGRvY3VtZW50LmFjdGl2ZUVsZW1lbnQpIHtcclxuICAgICAgICAgICAgICAgIGlkeCA9IGk7XHJcbiAgICAgICAgICAgICAgICBicmVhaztcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuXHJcbiAgICAgICAgbGV0IHByZXY6IG51bWJlciA9IGlkeCAtIDE7XHJcbiAgICAgICAgaWYgKHByZXYgPCAwKSB7XHJcbiAgICAgICAgICAgIHByZXYgPSBsaXN0SXRlbXMubGVuZ3RoO1xyXG4gICAgICAgIH1cclxuXHJcbiAgICAgICAgKDxIVE1MRWxlbWVudD5saXN0SXRlbXNbcHJldl0pLmZvY3VzKCk7XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBzZWxlY3ROZXh0TGlzdEl0ZW0gPSAoKTogdm9pZCA9PiB7XHJcbiAgICAgICAgY29uc3QgbGlzdEl0ZW1zID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChcIi5wb3B1cC5hY3RpdmUgYVwiKTtcclxuICAgICAgICBsZXQgaWR4ID0gLTE7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsaXN0SXRlbXMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgaWYgKCg8SFRNTEVsZW1lbnQ+bGlzdEl0ZW1zW2ldKSA9PT0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudCkge1xyXG4gICAgICAgICAgICAgICAgaWR4ID0gaTtcclxuICAgICAgICAgICAgICAgIGJyZWFrO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBsZXQgbmV4dDogbnVtYmVyID0gaWR4ICsgMTtcclxuICAgICAgICBpZiAobmV4dCA+IGxpc3RJdGVtcy5sZW5ndGgpIHtcclxuICAgICAgICAgICAgbmV4dCA9IDA7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICAoPEhUTUxFbGVtZW50Pmxpc3RJdGVtc1tuZXh0XSkuZm9jdXMoKTtcclxuICAgIH1cclxufVxyXG4iLCLvu79cInVzZSBzdHJpY3RcIjtcclxuaW1wb3J0IHsgVXNlclNldHRpbmdzIH0gZnJvbSBcIi4vbmxhcHAtdXNlcnNldHRpbmdzXCI7XHJcbmltcG9ydCB7IE1vbml0b3JpbmdTZXJ2aWNlIH0gZnJvbSBcIi4vbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlXCI7XHJcbmltcG9ydCB7IFZpZXdCYXNlIH0gZnJvbSBcIi4vbmxhcHAtdmlld1wiO1xyXG5pbXBvcnQgeyBIZWxwZXJzIH0gZnJvbSBcIi4vbmxhcHAtaGVscGVyc1wiO1xyXG5cclxuZXhwb3J0IGNsYXNzIEthYXJ0VmlldyBleHRlbmRzIFZpZXdCYXNlIHtcclxuXHJcbiAgICBjb25zdHJ1Y3Rvcihtb25pdG9yaW5nOiBNb25pdG9yaW5nU2VydmljZSwgdXNlclNldHRpbmdzOiBVc2VyU2V0dGluZ3MpIHtcclxuICAgICAgICBzdXBlcihtb25pdG9yaW5nLCB1c2VyU2V0dGluZ3MpO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgX2NvbnRlbnRWaWV3TmFtZTogc3RyaW5nO1xyXG4gICAgc2V0Q29udGVudFZpZXdOYW1lKG5hbWU6IHN0cmluZykge1xyXG4gICAgICAgIHRoaXMuX2NvbnRlbnRWaWV3TmFtZSA9IG5hbWU7XHJcbiAgICB9XHJcblxyXG4gICAgdmlld05hbWUoKTogc3RyaW5nIHtcclxuICAgICAgICByZXR1cm4gdGhpcy5fY29udGVudFZpZXdOYW1lIHx8IFwiS2FhcnRcIjtcclxuICAgIH1cclxuXHJcbiAgICBpbml0KCk6IHZvaWQge1xyXG4gICAgICAgIHN1cGVyLmluaXQoKTtcclxuXHJcbiAgICAgICAgdGhpcy5iaW5kT25DbGljayhcIi5zaGFyZVwiLCB0aGlzLnNoYXJlVXJsKTtcclxuICAgIH1cclxuXHJcbiAgICBsb2FkKCk6IHZvaWQge1xyXG4gICAgICAgIHN1cGVyLmxvYWQoKTtcclxuICAgIH1cclxuXHJcbiAgICBzaGFyZVVybCA9IChldnQ6IEV2ZW50KTogYm9vbGVhbiA9PiB7XHJcblxyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGxldCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgIGlmIChlbGVtLnRhZ05hbWUgIT09IFwiQVwiKSB7XHJcbiAgICAgICAgICAgICAgICBlbGVtID0gZWxlbS5wYXJlbnRFbGVtZW50O1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG4gICAgICAgICAgICBldnQuc3RvcFByb3BhZ2F0aW9uKCk7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBzaGFyZVRpdGxlID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRpdGxlXCIpO1xyXG4gICAgICAgICAgICBjb25zdCBzaGFyZVVybCA9IGVsZW0uZ2V0QXR0cmlidXRlKFwiZGF0YS11cmxcIik7XHJcbiAgICAgICAgICAgIGlmICghc2hhcmVVcmwpIHtcclxuICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTtcclxuICAgICAgICAgICAgfVxyXG5cclxuICAgICAgICAgICAgZWxlbS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgLy8gc2VuZCBsb2dFdmVudCB0byBBcHBJbnNpZ2h0c1xyXG4gICAgICAgICAgICB0aGlzLm1vbml0b3JpbmdTdmMubG9nU2hhcmVMaW5rKHNoYXJlVXJsLnJlcGxhY2Uod2luZG93LmxvY2F0aW9uLm9yaWdpbiwgXCJcIikpO1xyXG5cclxuICAgICAgICAgICAgcmV0dXJuIEhlbHBlcnMuc2hhcmUoc2hhcmVUaXRsZSwgc2hhcmVVcmwpO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxufSIsIu+7v1widXNlIHN0cmljdFwiO1xyXG5pbXBvcnQgeyBVc2VyU2V0dGluZ3MgfSBmcm9tIFwiLi9ubGFwcC11c2Vyc2V0dGluZ3NcIjtcclxuaW1wb3J0IHsgTW9uaXRvcmluZ1NlcnZpY2UgfSBmcm9tIFwiLi9ubGFwcC1tb25pdG9yaW5nLnNlcnZpY2VcIjtcclxuaW1wb3J0IHsgVmlld0Jhc2UgfSBmcm9tIFwiLi9ubGFwcC12aWV3XCI7XHJcbmltcG9ydCB7IEhlbHBlcnMgfSBmcm9tIFwiLi9ubGFwcC1oZWxwZXJzXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgT25kZXJ3ZXJwVmlldyBleHRlbmRzIFZpZXdCYXNlIHtcclxuXHJcbiAgICBjb25zdHJ1Y3Rvcihtb25pdG9yaW5nOiBNb25pdG9yaW5nU2VydmljZSwgdXNlclNldHRpbmdzOiBVc2VyU2V0dGluZ3MpIHtcclxuICAgICAgICBzdXBlcihtb25pdG9yaW5nLCB1c2VyU2V0dGluZ3MpO1xyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgX2NvbnRlbnRWaWV3TmFtZTogc3RyaW5nO1xyXG4gICAgc2V0Q29udGVudFZpZXdOYW1lKG5hbWU6IHN0cmluZykge1xyXG4gICAgICAgIHRoaXMuX2NvbnRlbnRWaWV3TmFtZSA9IG5hbWU7XHJcbiAgICB9XHJcblxyXG4gICAgdmlld05hbWUoKTogc3RyaW5nIHtcclxuICAgICAgICByZXR1cm4gdGhpcy5fY29udGVudFZpZXdOYW1lIHx8IFwiRGV0YWlsXCI7XHJcbiAgICB9XHJcblxyXG4gICAgaW5pdCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5pbml0KCk7XHJcblxyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuY2xpY2thcmVhXCIsIHRoaXMuY2hhcHRlckNsaWNrKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkVudGVyKFwiLmNoYXB0ZXJcIiwgdGhpcy50b2dnbGVDaGFwdGVyKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkFycm93TGVmdCh0aGlzLmNsb3NlQ2hhcHRlcik7XHJcbiAgICAgICAgdGhpcy5iaW5kT25BcnJvd1JpZ2h0KHRoaXMub3BlbkNoYXB0ZXIpO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuc2hhcmVcIiwgdGhpcy5zaGFyZVVybCk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25DbGljayhcIi5leHRlcm5hbFwiLCB0aGlzLm9wZW5FeHRMaW5rKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkNsaWNrKFwiLnVwXCIsIEhlbHBlcnMuc2Nyb2xsVG9Ub3ApO1xyXG4gICAgICAgIHRoaXMuYmluZE9uRW50ZXIoXCIudXBcIiwgSGVscGVycy5zY3JvbGxUb1RvcCk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9hZCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5sb2FkKCk7XHJcbiAgICAgICAgdGhpcy5vcGVuQ2hhcHRlckJ5SWQoKTtcclxuICAgICAgICBIZWxwZXJzLnNob3dTY3JvbGxUb1RvcEJ1dHRvbigpO1xyXG4gICAgfVxyXG5cclxuICAgIGNoYXB0ZXJDbGljayA9IChldnQ6IEV2ZW50KTogdm9pZCA9PiB7XHJcblxyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGxldCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcblxyXG4gICAgICAgICAgICAvLyBub3JtYWwgbmF2aWdhdGlvbiBmb3IgbGlua3Mgd2l0aGluIGNoYXB0ZXJzXHJcbiAgICAgICAgICAgIGlmIChlbGVtLnRhZ05hbWUgPT09IFwiQVwiKSB7XHJcbiAgICAgICAgICAgICAgICByZXR1cm47XHJcbiAgICAgICAgICAgIH1cclxuXHJcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG5cclxuICAgICAgICAgICAgaWYgKCFlbGVtLmNsYXNzTGlzdC5jb250YWlucyhcImNoYXB0ZXJcIikpIHtcclxuICAgICAgICAgICAgICAgIGVsZW0gPSBlbGVtLnBhcmVudEVsZW1lbnQ7XHJcbiAgICAgICAgICAgIH1cclxuXHJcbiAgICAgICAgICAgIHRoaXMudG9nZ2xlQ2hhcHRlcihlbGVtKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgb3BlbkNoYXB0ZXJCeUlkID0gKCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGNvbnN0IGlkID0gSGVscGVycy5nZXRRdWVyeVN0cmluZ1BhcmFtQnlOYW1lKFwiaWRcIik7XHJcbiAgICAgICAgaWYgKCFpZCkge1xyXG4gICAgICAgICAgICB0aGlzLmxvZ1BhZ2VWaWV3KCk7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBjb25zdCBjaGFwdGVyID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5jaGFwdGVyW2RhdGEtaWQ9J1wiICsgaWQgKyBcIiddXCIpO1xyXG4gICAgICAgIGlmICghY2hhcHRlcilcclxuICAgICAgICAgICAgcmV0dXJuO1xyXG5cclxuICAgICAgICBjaGFwdGVyLnNjcm9sbEludG9WaWV3KCk7XHJcbiAgICAgICAgY2hhcHRlci5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAvLyBzZW5kIHRyYWNrUGFnZVZpZXcgdG8gQXBwSW5zaWdodHNcclxuICAgICAgICB0aGlzLm1vbml0b3JpbmdTdmMubG9nSW50ZXJuYWxMaW5rKGNoYXB0ZXIpO1xyXG4gICAgfVxyXG5cclxuICAgIG9wZW5FeHRMaW5rID0gKGV2dDogRXZlbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoZXZ0ICYmIDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkge1xyXG4gICAgICAgICAgICBldnQucHJldmVudERlZmF1bHQoKTtcclxuICAgICAgICAgICAgZXZ0LnN0b3BQcm9wYWdhdGlvbigpO1xyXG5cclxuICAgICAgICAgICAgY29uc3QgZWxlbSA9ICg8SFRNTEVsZW1lbnQ+ZXZ0LmN1cnJlbnRUYXJnZXQpO1xyXG4gICAgICAgICAgICBjb25zdCB1cmwgPSBlbGVtLmdldEF0dHJpYnV0ZShcImhyZWZcIik7XHJcblxyXG4gICAgICAgICAgICAvLyBzZW5kIGxvZ0V2ZW50IHRvIEFwcEluc2lnaHRzXHJcbiAgICAgICAgICAgIHRoaXMubW9uaXRvcmluZ1N2Yy5sb2dFeHRlcm5hbExpbmsodXJsKTtcclxuXHJcbiAgICAgICAgICAgIC8vIG9wZW4gdGhlIGxpbmsgaW4gYSBuZXcgd2luZG93XHJcbiAgICAgICAgICAgIHdpbmRvdy5vcGVuKHVybCwgJ19ibGFuaycpO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBzaGFyZVVybCA9IChldnQ6IEV2ZW50KTogYm9vbGVhbiA9PiB7XHJcblxyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGxldCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgIGlmIChlbGVtLnRhZ05hbWUgIT09IFwiQVwiKSB7XHJcbiAgICAgICAgICAgICAgICBlbGVtID0gZWxlbS5wYXJlbnRFbGVtZW50O1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG4gICAgICAgICAgICBldnQuc3RvcFByb3BhZ2F0aW9uKCk7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBzaGFyZVRpdGxlID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRpdGxlXCIpO1xyXG4gICAgICAgICAgICBjb25zdCBzaGFyZVVybCA9IGVsZW0uZ2V0QXR0cmlidXRlKFwiZGF0YS11cmxcIik7XHJcbiAgICAgICAgICAgIGlmICghc2hhcmVVcmwpIHtcclxuICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTtcclxuICAgICAgICAgICAgfVxyXG5cclxuICAgICAgICAgICAgZWxlbS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgLy8gc2VuZCBsb2dFdmVudCB0byBBcHBJbnNpZ2h0c1xyXG4gICAgICAgICAgICB0aGlzLm1vbml0b3JpbmdTdmMubG9nU2hhcmVMaW5rKHNoYXJlVXJsLnJlcGxhY2Uod2luZG93LmxvY2F0aW9uLm9yaWdpbiwgXCJcIikpO1xyXG5cclxuICAgICAgICAgICAgcmV0dXJuIEhlbHBlcnMuc2hhcmUoc2hhcmVUaXRsZSwgc2hhcmVVcmwpO1xyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIHRvZ2dsZUNoYXB0ZXIgPSAoY2hhcHRlckVsZW06IEVsZW1lbnQpOiB2b2lkID0+IHsgXHJcblxyXG4gICAgICAgIGNvbnN0IGlzT3BlbiA9IGNoYXB0ZXJFbGVtLmNsYXNzTGlzdC5jb250YWlucyhcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgaWYgKCFpc09wZW4pIHtcclxuICAgICAgICAgICAgY2hhcHRlckVsZW0uY2xhc3NMaXN0LmFkZChcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgIC8vIHNlbmQgdHJhY2tQYWdlVmlldyB0byBBcHBJbnNpZ2h0c1xyXG4gICAgICAgICAgICB0aGlzLm1vbml0b3JpbmdTdmMubG9nQ2hhcHRlcihjaGFwdGVyRWxlbSk7XHJcbiAgICAgICAgfSBlbHNlIHtcclxuICAgICAgICAgICAgY2hhcHRlckVsZW0uY2xhc3NMaXN0LnJlbW92ZShcImFjdGl2ZVwiKTtcclxuICAgICAgICB9XHJcblxyXG4gICAgICAgIEhlbHBlcnMuc2hvd1Njcm9sbFRvVG9wQnV0dG9uKCk7XHJcblxyXG4gICAgICAgIC8vIHNldCB0YWJpbmRleGVzXHJcbiAgICAgICAgSGVscGVycy50b2dnbGVUYWJJbmRleChcIi5jaGFwdGVyLmFjdGl2ZSBhXCIsIFwiLmNoYXB0ZXI6bm90KC5hY3RpdmUpIGFcIik7XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBvcGVuQ2hhcHRlciA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBhY3RpdmVFbGVtID0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudDtcclxuICAgICAgICBpZiAoYWN0aXZlRWxlbSAmJiBhY3RpdmVFbGVtLnRhZ05hbWUgPT09IFwiSDJcIikge1xyXG4gICAgICAgICAgICBjb25zdCBjaGFwdGVyRWxlbSA9IGFjdGl2ZUVsZW0ucGFyZW50RWxlbWVudDtcclxuICAgICAgICAgICAgY29uc3QgaXNPcGVuID0gY2hhcHRlckVsZW0uY2xhc3NMaXN0LmNvbnRhaW5zKFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICBpZiAoIWlzT3Blbikge1xyXG4gICAgICAgICAgICAgICAgdGhpcy50b2dnbGVDaGFwdGVyKGNoYXB0ZXJFbGVtKTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIGNsb3NlQ2hhcHRlciA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBhY3RpdmVFbGVtID0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudDtcclxuICAgICAgICBpZiAoYWN0aXZlRWxlbSAmJiBhY3RpdmVFbGVtLnRhZ05hbWUgPT09IFwiSDJcIikge1xyXG4gICAgICAgICAgICBjb25zdCBjaGFwdGVyRWxlbSA9IGFjdGl2ZUVsZW0ucGFyZW50RWxlbWVudDtcclxuICAgICAgICAgICAgY29uc3QgaXNPcGVuID0gY2hhcHRlckVsZW0uY2xhc3NMaXN0LmNvbnRhaW5zKFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICBpZiAoaXNPcGVuKSB7XHJcbiAgICAgICAgICAgICAgICB0aGlzLnRvZ2dsZUNoYXB0ZXIoY2hhcHRlckVsZW0pO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG59XHJcbiIsIu+7v1widXNlIHN0cmljdFwiO1xyXG5pbXBvcnQgeyBVc2VyU2V0dGluZ3MgfSBmcm9tIFwiLi9ubGFwcC11c2Vyc2V0dGluZ3NcIjtcclxuaW1wb3J0IHsgTW9uaXRvcmluZ1NlcnZpY2UgfSBmcm9tIFwiLi9ubGFwcC1tb25pdG9yaW5nLnNlcnZpY2VcIjtcclxuaW1wb3J0IHsgVmlld0Jhc2UgfSBmcm9tIFwiLi9ubGFwcC12aWV3XCI7XHJcbmltcG9ydCB7IEhlbHBlcnMgfSBmcm9tIFwiLi9ubGFwcC1oZWxwZXJzXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgV2Vsa29tVmlldyBleHRlbmRzIFZpZXdCYXNlIHtcclxuICAgIGNvbnN0cnVjdG9yKG1vbml0b3Jpbmc6IE1vbml0b3JpbmdTZXJ2aWNlLCB1c2VyU2V0dGluZ3M6IFVzZXJTZXR0aW5ncykge1xyXG4gICAgICAgIHN1cGVyKG1vbml0b3JpbmcsIHVzZXJTZXR0aW5ncyk7XHJcbiAgICB9XHJcblxyXG4gICAgdmlld05hbWUoKTogc3RyaW5nIHtcclxuICAgICAgICByZXR1cm4gXCJXZWxrb21cIjtcclxuICAgIH1cclxuXHJcbiAgICBpbml0KCk6IHZvaWQge1xyXG4gICAgICAgIHN1cGVyLmluaXQoKTtcclxuXHJcbiAgICAgICAgLy8gcmVkaXJlY3QgdG8gaG9tZSBwYWdlIGlmIGxhbmd1YWdlIGFuZCBjaXR5IGFyZSBhbHJlYWR5IHNlbGVjdGVkXHJcbiAgICAgICAgdGhpcy50cnlGb3J3YXJkVG9Ib21lKCk7XHJcblxyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuYmFja1wiLCB0aGlzLnNob3dTdGVwMSk7XHJcbiAgICAgICAgdGhpcy5iaW5kT25DbGljayhcIiNsYW5ndWFnZSBidXR0b25cIiwgdGhpcy5zaG93U3RlcDIpO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIubGFuZyBhXCIsIHRoaXMucmVkaXJlY3RUb0hvbWUpO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQ2xpY2soXCIuY2xvc2UtZGlzY2xhaW1lclwiLCB0aGlzLmFjY2VwdERpc2NsYWltZXJzKTtcclxuXHJcbiAgICAgICAgdGhpcy5iaW5kT25BcnJvd0xlZnQodGhpcy5nb0JhY2spO1xyXG4gICAgICAgIHRoaXMuYmluZE9uRW50ZXIoXCIuYmFja1wiLCB0aGlzLnNob3dTdGVwMSk7XHJcblxyXG4gICAgICAgIHRoaXMuYmluZE9uQXJyb3dVcCh0aGlzLnNlbGVjdFByZXZpb3VzTGlzdEl0ZW0pO1xyXG4gICAgICAgIHRoaXMuYmluZE9uQXJyb3dEb3duKHRoaXMuc2VsZWN0TmV4dExpc3RJdGVtKTtcclxuICAgICAgICB0aGlzLmJpbmRPbkFycm93UmlnaHQodGhpcy5zaG93TmV4dFN0ZXApO1xyXG4gICAgfVxyXG5cclxuICAgIGxvYWQoKTogdm9pZCB7XHJcbiAgICAgICAgc3VwZXIubG9hZCgpO1xyXG4gICAgfVxyXG5cclxuICAgIHNob3dTdGVwMSA9IChldnQ6IEV2ZW50KTogdm9pZCA9PiB7XHJcbiAgICAgICAgaWYgKGV2dCAmJiA8SFRNTEVsZW1lbnQ+ZXZ0LmN1cnJlbnRUYXJnZXQpIHtcclxuICAgICAgICAgICAgdGhpcy5nb0JhY2soKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgc2hvd1N0ZXAyID0gKGV2dDogRXZlbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoZXZ0ICYmIDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkge1xyXG4gICAgICAgICAgICBjb25zdCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcblxyXG4gICAgICAgICAgICB0aGlzLmdvdG9TdGVwMihlbGVtKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcmVkaXJlY3RUb0hvbWUgPSAoZXZ0OiBFdmVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGlmIChldnQgJiYgPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KSB7XHJcbiAgICAgICAgICAgIGV2dC5wcmV2ZW50RGVmYXVsdCgpO1xyXG5cclxuICAgICAgICAgICAgLy8gc3RvcmUgdXNlciBzZXR0aW5nc1xyXG4gICAgICAgICAgICBjb25zdCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgIHRoaXMuZ290b0hvbWUoZWxlbSk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHRyeUZvcndhcmRUb0hvbWUgPSAoKTogdm9pZCA9PiB7XHJcbiAgICAgICAgaWYgKHRoaXMudXNlclNldHRpbmdzLmlzVmFsaWQoKSkge1xyXG4gICAgICAgICAgICBjb25zdCB1cmwgPSB0aGlzLnVzZXJTZXR0aW5ncy50b0hvbWVVcmwoKTtcclxuICAgICAgICAgICAgd2luZG93LmxvY2F0aW9uLmhyZWYgPSB1cmw7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGFjY2VwdERpc2NsYWltZXJzID0gKGV2dDogRXZlbnQpOiB2b2lkID0+IHtcclxuICAgICAgICBpZiAoZXZ0ICYmIDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkge1xyXG4gICAgICAgICAgICBjb25zdCBkaXZEaXNjbGFpbWVyID0gPEhUTUxFbGVtZW50PmRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIuZGlzY2xhaW1lci5hY3RpdmVcIik7XHJcbiAgICAgICAgICAgIGRpdkRpc2NsYWltZXIuY2xhc3NMaXN0LnJlbW92ZShcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgIHRoaXMudXNlclNldHRpbmdzLmNvb2tpZUNvbnNlbnRBY2NlcHRlZCA9IHRydWU7XHJcbiAgICAgICAgICAgIHRoaXMudXNlclNldHRpbmdzLmRpc2NsYWltZXJBY2NlcHRlZCA9IHRydWU7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgc2VsZWN0UHJldmlvdXNMaXN0SXRlbSA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBzZWxlY3RvciA9IGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LmNvbnRhaW5zKFwic3RlcDJcIikgPyBcIiN0b3duIC5sYW5nLmFjdGl2ZSBhXCIgOiBcIiNsYW5ndWFnZSBidXR0b25cIjtcclxuICAgICAgICBjb25zdCBsaXN0SXRlbXMgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKHNlbGVjdG9yKTtcclxuICAgICAgICBsZXQgaWR4ID0gbGlzdEl0ZW1zLmxlbmd0aCArIDE7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsaXN0SXRlbXMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgaWYgKCg8SFRNTEVsZW1lbnQ+bGlzdEl0ZW1zW2ldKSA9PT0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudCkge1xyXG4gICAgICAgICAgICAgICAgaWR4ID0gaTtcclxuICAgICAgICAgICAgICAgIGJyZWFrO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBsZXQgcHJldjogbnVtYmVyID0gaWR4IC0gMTtcclxuICAgICAgICBpZiAocHJldiA8IDApIHtcclxuICAgICAgICAgICAgcHJldiA9IGxpc3RJdGVtcy5sZW5ndGg7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICAoPEhUTUxFbGVtZW50Pmxpc3RJdGVtc1twcmV2XSkuZm9jdXMoKTtcclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIHNlbGVjdE5leHRMaXN0SXRlbSA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBzZWxlY3RvciA9IGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LmNvbnRhaW5zKFwic3RlcDJcIikgPyBcIiN0b3duIC5sYW5nLmFjdGl2ZSBhXCIgOiBcIiNsYW5ndWFnZSBidXR0b25cIjtcclxuICAgICAgICBjb25zdCBsaXN0SXRlbXMgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKHNlbGVjdG9yKTtcclxuICAgICAgICBsZXQgaWR4ID0gLTE7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsaXN0SXRlbXMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgaWYgKCg8SFRNTEVsZW1lbnQ+bGlzdEl0ZW1zW2ldKSA9PT0gZG9jdW1lbnQuYWN0aXZlRWxlbWVudCkge1xyXG4gICAgICAgICAgICAgICAgaWR4ID0gaTtcclxuICAgICAgICAgICAgICAgIGJyZWFrO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBsZXQgbmV4dDogbnVtYmVyID0gaWR4ICsgMTtcclxuICAgICAgICBpZiAobmV4dCA+IGxpc3RJdGVtcy5sZW5ndGgpIHtcclxuICAgICAgICAgICAgbmV4dCA9IDA7XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICAoPEhUTUxFbGVtZW50Pmxpc3RJdGVtc1tuZXh0XSkuZm9jdXMoKTtcclxuICAgIH1cclxuXHJcbiAgICBwcml2YXRlIHNob3dOZXh0U3RlcCA9ICgpOiB2b2lkID0+IHtcclxuICAgICAgICBjb25zdCBpc1N0ZXAyID0gZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuY29udGFpbnMoXCJzdGVwMlwiKTtcclxuICAgICAgICBpZiAoaXNTdGVwMikge1xyXG4gICAgICAgICAgICB0aGlzLmdvdG9Ib21lKDxIVE1MRWxlbWVudD5kb2N1bWVudC5hY3RpdmVFbGVtZW50KTtcclxuICAgICAgICB9IGVsc2Uge1xyXG4gICAgICAgICAgICB0aGlzLmdvdG9TdGVwMig8SFRNTEVsZW1lbnQ+ZG9jdW1lbnQuYWN0aXZlRWxlbWVudCk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIHByaXZhdGUgZ290b1N0ZXAyID0gKGVsZW06IEhUTUxFbGVtZW50KTogdm9pZCA9PiB7XHJcbiAgICAgICAgaWYgKGVsZW0pIHtcclxuICAgICAgICAgICAgSGVscGVycy5yZW1vdmVDbGFzc0FsbChcIi5kaXNjbGFpbWVyXCIsIFwiYWN0aXZlXCIpO1xyXG4gICAgICAgICAgICBIZWxwZXJzLnJlbW92ZUNsYXNzQWxsKFwiI3Rvd24gLmxhbmdcIiwgXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgIEhlbHBlcnMucmVtb3ZlQ2xhc3NBbGwoXCIjbGFuZ3VhZ2UgYnV0dG9uXCIsIFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgZWxlbS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgY29uc3QgYm9keSA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKFwiYm9keVwiKVswXTtcclxuICAgICAgICAgICAgYm9keS5jbGFzc0xpc3QuYWRkKFwic3RlcDJcIik7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBsYW5ndWFnZSA9IGVsZW0uZ2V0QXR0cmlidXRlKFwiZGF0YS1sYW5ndWFnZVwiKTtcclxuICAgICAgICAgICAgY29uc3QgZGl2TGFuZ3VhZ2UgPSA8SFRNTEVsZW1lbnQ+ZG9jdW1lbnQucXVlcnlTZWxlY3RvcihcIi5sYW5nLlwiICsgbGFuZ3VhZ2UpO1xyXG4gICAgICAgICAgICBkaXZMYW5ndWFnZS5jbGFzc0xpc3QuYWRkKFwiYWN0aXZlXCIpO1xyXG5cclxuICAgICAgICAgICAgaWYgKCF0aGlzLnVzZXJTZXR0aW5ncy5jb29raWVDb25zZW50QWNjZXB0ZWQgfHwgIXRoaXMudXNlclNldHRpbmdzLmRpc2NsYWltZXJBY2NlcHRlZCkge1xyXG4gICAgICAgICAgICAgICAgY29uc3QgZGl2RGlzY2xhaW1lciA9IDxIVE1MRWxlbWVudD5kb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwiLmRpc2NsYWltZXIuXCIgKyBsYW5ndWFnZSk7XHJcbiAgICAgICAgICAgICAgICBkaXZEaXNjbGFpbWVyLmNsYXNzTGlzdC5hZGQoXCJhY3RpdmVcIik7XHJcbiAgICAgICAgICAgIH1cclxuXHJcbiAgICAgICAgICAgIC8vIHRvZ2dsZSBhcmlhLWhpZGRlblxyXG4gICAgICAgICAgICBIZWxwZXJzLnRvZ2dsZUFyaWFIaWRkZW4oXCIubGFuZy5hY3RpdmUsIC5kaXNjbGFpbWVyLmFjdGl2ZSwgI3Rvd25cIik7XHJcbiAgICAgICAgICAgIC8vIHRvZ2dsZSB0YWIgaW5kZXhlc1xyXG4gICAgICAgICAgICBIZWxwZXJzLnRvZ2dsZVRhYkluZGV4KFwiI3Rvd24gYSwgLmJhY2tcIiwgXCIjbGFuZ3VhZ2UgYnV0dG9uXCIpO1xyXG5cclxuICAgICAgICAgICAgLy8gc2V0IGZvY3VzXHJcbiAgICAgICAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgSGVscGVycy5zZXRSdGwobGFuZ3VhZ2Uuc3Vic3RyKDAsIDIpLnRvTG93ZXJDYXNlKCkgPT09IFwiYXJcIik7XHJcbiAgICAgICAgICAgICAgICAoPEhUTUxFbGVtZW50PmRpdkxhbmd1YWdlLnF1ZXJ5U2VsZWN0b3IoXCJhXCIpKS5mb2N1cygpO1xyXG4gICAgICAgICAgICB9LCAxMDAwKTtcclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBnb3RvSG9tZSA9IChlbGVtOiBIVE1MRWxlbWVudCk6IHZvaWQgPT4ge1xyXG4gICAgICAgIGlmIChlbGVtKSB7XHJcbiAgICAgICAgICAgIGVsZW0uY2xhc3NMaXN0LmFkZChcImFjdGl2ZVwiKTtcclxuXHJcbiAgICAgICAgICAgIGNvbnN0IGxhbmd1YWdlID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLWxhbmd1YWdlXCIpO1xyXG4gICAgICAgICAgICBjb25zdCB0b3duID0gZWxlbS5nZXRBdHRyaWJ1dGUoXCJkYXRhLXRvd25cIik7XHJcblxyXG4gICAgICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncy5sYW5ndWFnZSA9IGxhbmd1YWdlO1xyXG4gICAgICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncy50b3duID0gdG93bjtcclxuXHJcbiAgICAgICAgICAgIGlmICh0aGlzLnVzZXJTZXR0aW5ncy5pc1ZhbGlkKCkpIHtcclxuXHJcbiAgICAgICAgICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncy5kaXNjbGFpbWVyQWNjZXB0ZWQgPSB0cnVlO1xyXG4gICAgICAgICAgICAgICAgdGhpcy51c2VyU2V0dGluZ3MuY29va2llQ29uc2VudEFjY2VwdGVkID0gdHJ1ZTtcclxuXHJcbiAgICAgICAgICAgICAgICBjb25zdCB1cmwgPSB0aGlzLnVzZXJTZXR0aW5ncy50b0hvbWVVcmwoKTtcclxuXHJcbiAgICAgICAgICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHtcclxuICAgICAgICAgICAgICAgICAgICB3aW5kb3cubG9jYXRpb24uaHJlZiA9IHVybDtcclxuICAgICAgICAgICAgICAgIH0sIDgwMCk7XHJcbiAgICAgICAgICAgIH1cclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBnb0JhY2sgPSAoKTogdm9pZCA9PiB7XHJcbiAgICAgICAgY29uc3QgYm9keSA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKFwiYm9keVwiKVswXTtcclxuICAgICAgICBib2R5LmNsYXNzTGlzdC5yZW1vdmUoXCJzdGVwMlwiKTtcclxuXHJcbiAgICAgICAgLy8gdG9nZ2xlIGFyaWEtaGlkZGVuXHJcbiAgICAgICAgSGVscGVycy50b2dnbGVBcmlhSGlkZGVuKFwiI2xhbmd1YWdlXCIpO1xyXG4gICAgICAgIC8vIHRvZ2dsZSB0YWIgaW5kZXhlc1xyXG4gICAgICAgIEhlbHBlcnMudG9nZ2xlVGFiSW5kZXgoXCIjbGFuZ3VhZ2UgYnV0dG9uXCIsIFwiI3Rvd24gYSwgLmJhY2tcIik7XHJcblxyXG4gICAgICAgIC8vIHNldCBmb2N1c1xyXG4gICAgICAgIGNvbnN0IGVsZW1Gb2N1cyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIjbGFuZ3VhZ2UgYnV0dG9uLmFjdGl2ZVwiKTtcclxuICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHtcclxuICAgICAgICAgICAgICAgIEhlbHBlcnMuc2V0UnRsKGZhbHNlKTtcclxuICAgICAgICAgICAgICAgICg8SFRNTEVsZW1lbnQ+ZWxlbUZvY3VzKS5mb2N1cygpO1xyXG4gICAgICAgICAgICB9LFxyXG4gICAgICAgICAgICA0MDApO1xyXG4gICAgfVxyXG59XHJcbiIsIu+7v1widXNlIHN0cmljdFwiO1xyXG5pbXBvcnQgeyBVc2VyU2V0dGluZ3MgfSBmcm9tIFwiLi9ubGFwcC11c2Vyc2V0dGluZ3NcIjtcclxuaW1wb3J0IHsgTW9uaXRvcmluZ1NlcnZpY2UgfSBmcm9tIFwiLi9ubGFwcC1tb25pdG9yaW5nLnNlcnZpY2VcIjtcclxuaW1wb3J0IHsgVmlld0Jhc2UgfSBmcm9tIFwiLi9ubGFwcC12aWV3XCI7XHJcbmltcG9ydCB7IEhlbHBlcnMgfSBmcm9tIFwiLi9ubGFwcC1oZWxwZXJzXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgWm9la1Jlc3VsdGF0ZW5WaWV3IGV4dGVuZHMgVmlld0Jhc2Uge1xyXG5cclxuICAgIGNvbnN0cnVjdG9yKG1vbml0b3Jpbmc6IE1vbml0b3JpbmdTZXJ2aWNlLCB1c2VyU2V0dGluZ3M6IFVzZXJTZXR0aW5ncykge1xyXG4gICAgICAgIHN1cGVyKG1vbml0b3JpbmcsIHVzZXJTZXR0aW5ncyk7XHJcbiAgICB9XHJcblxyXG4gICAgcHJpdmF0ZSBfY29udGVudFZpZXdOYW1lOiBzdHJpbmc7XHJcbiAgICBzZXRDb250ZW50Vmlld05hbWUobmFtZTogc3RyaW5nKSB7XHJcbiAgICAgICAgdGhpcy5fY29udGVudFZpZXdOYW1lID0gbmFtZTtcclxuICAgIH1cclxuXHJcbiAgICB2aWV3TmFtZSgpOiBzdHJpbmcge1xyXG4gICAgICAgIHJldHVybiB0aGlzLl9jb250ZW50Vmlld05hbWUgfHwgXCJab2VrcmVzdWx0YXRlblwiO1xyXG4gICAgfVxyXG5cclxuICAgIGluaXQoKTogdm9pZCB7XHJcbiAgICAgICAgc3VwZXIuaW5pdCgpO1xyXG5cclxuICAgICAgICB0aGlzLmJpbmRPbkNsaWNrKFwiLnVwXCIsIEhlbHBlcnMuc2Nyb2xsVG9Ub3ApO1xyXG4gICAgICAgIHRoaXMuYmluZE9uRW50ZXIoXCIudXBcIiwgSGVscGVycy5zY3JvbGxUb1RvcCk7XHJcbiAgICB9XHJcblxyXG4gICAgbG9hZCgpOiB2b2lkIHtcclxuICAgICAgICBzdXBlci5sb2FkKCk7XHJcbiAgICAgICAgSGVscGVycy5zaG93U2Nyb2xsVG9Ub3BCdXR0b24oKTtcclxuICAgIH1cclxufVxyXG4iLCLvu79cInVzZSBzdHJpY3RcIjtcclxuaW1wb3J0IHsgVXNlclNldHRpbmdzIH0gZnJvbSBcIi4vbmxhcHAtdXNlcnNldHRpbmdzXCI7XHJcbmltcG9ydCB7IE1vbml0b3JpbmdTZXJ2aWNlIH0gZnJvbSBcIi4vbmxhcHAtbW9uaXRvcmluZy5zZXJ2aWNlXCI7XHJcbmltcG9ydCB7IFB3YUluc3RhbGxlciB9IGZyb20gXCIuL25sYXBwLXB3YVwiO1xyXG5cclxuZXhwb3J0IGFic3RyYWN0IGNsYXNzIFZpZXdCYXNlIHtcclxuICAgIHByb3RlY3RlZCBtb25pdG9yaW5nU3ZjOiBNb25pdG9yaW5nU2VydmljZTtcclxuICAgIHByb3RlY3RlZCB1c2VyU2V0dGluZ3M6IFVzZXJTZXR0aW5ncztcclxuICAgIHByb3RlY3RlZCBwd2FJbnN0YWxsZXI6IFB3YUluc3RhbGxlcjtcclxuXHJcbiAgICBwcml2YXRlIGRpZFNjcm9sbDogYm9vbGVhbjtcclxuICAgIHByaXZhdGUgbGFzdFNjcm9sbFRvcCA9IDA7XHJcbiAgICBwcml2YXRlIGRlbHRhID0gNTtcclxuXHJcbiAgICBwcm90ZWN0ZWQgY29uc3RydWN0b3IobW9uaXRvcmluZzogTW9uaXRvcmluZ1NlcnZpY2UsIHVzZXJTZXR0aW5nczogVXNlclNldHRpbmdzKSB7XHJcbiAgICAgICAgdGhpcy5tb25pdG9yaW5nU3ZjID0gbW9uaXRvcmluZztcclxuICAgICAgICB0aGlzLnVzZXJTZXR0aW5ncyA9IHVzZXJTZXR0aW5ncztcclxuICAgICAgICB0aGlzLnB3YUluc3RhbGxlciA9IG5ldyBQd2FJbnN0YWxsZXIoXCJwd2FDb250ZW50XCIsIFwiaW5zdGFsbFB3YVwiKTtcclxuICAgIH1cclxuXHJcbiAgICBsb2dQYWdlVmlldyA9IChwYWdlTmFtZT86IHN0cmluZyk6IHZvaWQgPT4ge1xyXG4gICAgICAgIC8vIHNlbmQgdHJhY2tQYWdlVmlldyB0byBBcHBJbnNpZ2h0c1xyXG4gICAgICAgIHRoaXMubW9uaXRvcmluZ1N2Yy5sb2dQYWdlKHBhZ2VOYW1lKTtcclxuICAgIH1cclxuXHJcbiAgICBhYnN0cmFjdCB2aWV3TmFtZSgpOiBzdHJpbmc7XHJcblxyXG4gICAgaW5pdCgpOiB2b2lkIHtcclxuICAgICAgICB0aGlzLnB3YUluc3RhbGxlci5pbml0KCk7XHJcbiAgICB9O1xyXG5cclxuICAgIGxvYWQoKTogdm9pZCB7XHJcbiAgICAgICAgdGhpcy5sb2dQYWdlVmlldyh0aGlzLnZpZXdOYW1lKCkpO1xyXG5cclxuICAgICAgICB0aGlzLmFkZFNlYXJjaElucHV0QW5pbWF0aW9uKCk7XHJcbiAgICAgICAgdGhpcy5hdHRhY2hTZWFyY2hGb3JtSGFuZGxlcnMoKTtcclxuXHJcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoXCJzY3JvbGxcIiwgKCkgPT4ge1xyXG4gICAgICAgICAgICB0aGlzLmRpZFNjcm9sbCA9IHRydWU7XHJcbiAgICAgICAgfSk7XHJcblxyXG4gICAgICAgIHNldEludGVydmFsKCgpID0+IHtcclxuICAgICAgICAgICAgaWYgKHRoaXMuZGlkU2Nyb2xsKSB7XHJcbiAgICAgICAgICAgICAgICB0aGlzLmhhc1Njcm9sbGVkKCk7XHJcbiAgICAgICAgICAgICAgICB0aGlzLmRpZFNjcm9sbCA9IGZhbHNlO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfSwgMjUwKTtcclxuICAgIH1cclxuXHJcbiAgICBiaW5kT25LZXlEb3duKHNlbGVjdG9yOiBzdHJpbmcsIG1ldGhvZDogYW55KTogdm9pZCB7XHJcbiAgICAgICAgY29uc3QgZWxlbWVudHMgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKHNlbGVjdG9yKTtcclxuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGVsZW1lbnRzLmxlbmd0aDsgaSsrKSB7XHJcbiAgICAgICAgICAgIGlmIChlbGVtZW50c1tpXSBhcyBIVE1MRWxlbWVudCkge1xyXG4gICAgICAgICAgICAgICAgKDxIVE1MRWxlbWVudD5lbGVtZW50c1tpXSkuYWRkRXZlbnRMaXN0ZW5lcihcImtleWRvd25cIiwgbWV0aG9kLCB0cnVlKTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBiaW5kT25FbnRlcihzZWxlY3Rvcjogc3RyaW5nLCBtZXRob2Q6IGFueSk6IHZvaWQge1xyXG4gICAgICAgIGNvbnN0IGVsZW1lbnRzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3Rvcik7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtZW50cy5sZW5ndGg7IGkrKykge1xyXG4gICAgICAgICAgICBpZiAoZWxlbWVudHNbaV0gYXMgSFRNTEVsZW1lbnQpIHtcclxuICAgICAgICAgICAgICAgICg8SFRNTEVsZW1lbnQ+ZWxlbWVudHNbaV0pLmFkZEV2ZW50TGlzdGVuZXIoXCJrZXlkb3duXCIsXHJcbiAgICAgICAgICAgICAgICAgICAgICAgIChldnQ6ICBLZXlib2FyZEV2ZW50KSA9PiB7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoZXZ0ICYmIGV2dC5rZXlDb2RlID09PSAxMykge1xyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGVsZW0gPSAoPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KTtcclxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZXRob2QoZWxlbSk7XHJcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XHJcbiAgICAgICAgICAgICAgICAgICAgICAgIH0sIHRydWUpO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGJpbmRPbkVzY2FwZShtZXRob2Q6IGFueSk6IHZvaWQge1xyXG5cclxuICAgICAgICBkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKFwia2V5ZG93blwiLFxyXG4gICAgICAgICAgICAoZXZ0OiBLZXlib2FyZEV2ZW50KSA9PiB7XHJcbiAgICAgICAgICAgICAgICBpZiAoZXZ0ICYmIGV2dC5rZXlDb2RlID09PSAyNykge1xyXG4gICAgICAgICAgICAgICAgICAgIGNvbnN0IGVsZW0gPSAoPEhUTUxFbGVtZW50PmV2dC5jdXJyZW50VGFyZ2V0KTtcclxuICAgICAgICAgICAgICAgICAgICBtZXRob2QoZWxlbSk7XHJcbiAgICAgICAgICAgICAgICB9XHJcbiAgICAgICAgICAgIH0sIHRydWUpO1xyXG4gICAgfVxyXG5cclxuICAgIGJpbmRPbkFycm93VXAobWV0aG9kOiBhbnkpOiB2b2lkIHtcclxuXHJcbiAgICAgICAgZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcihcImtleWRvd25cIixcclxuICAgICAgICAgICAgKGV2dDogS2V5Ym9hcmRFdmVudCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgaWYgKGV2dCAmJiBldnQua2V5Q29kZSA9PT0gMzgpIHtcclxuICAgICAgICAgICAgICAgICAgICBjb25zdCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgICAgICAgICAgbWV0aG9kKGVsZW0pO1xyXG4gICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICB9LCB0cnVlKTtcclxuICAgIH1cclxuXHJcbiAgICBiaW5kT25BcnJvd0Rvd24obWV0aG9kOiBhbnkpOiB2b2lkIHtcclxuXHJcbiAgICAgICAgZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcihcImtleWRvd25cIixcclxuICAgICAgICAgICAgKGV2dDogS2V5Ym9hcmRFdmVudCkgPT4ge1xyXG4gICAgICAgICAgICAgICAgaWYgKGV2dCAmJiBldnQua2V5Q29kZSA9PT0gNDApIHtcclxuICAgICAgICAgICAgICAgICAgICBjb25zdCBlbGVtID0gKDxIVE1MRWxlbWVudD5ldnQuY3VycmVudFRhcmdldCk7XHJcbiAgICAgICAgICAgICAgICAgICAgbWV0aG9kKGVsZW0pO1xyXG4gICAgICAgICAgICAgICAgfVxyXG4gICAgICAgICAgICB9LCB0cnVlKTtcclxuICAgIH1cclxuXHJcbiAgICBiaW5kT25BcnJvd1JpZ2h0KG1ldGhvZDogYW55KTogdm9pZCB7XHJcblxyXG4gICAgICAgIGRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoXCJrZXlkb3duXCIsXHJcbiAgICAgICAgICAgIChldnQ6IEtleWJvYXJkRXZlbnQpID0+IHtcclxuICAgICAgICAgICAgICAgIGlmIChldnQgJiYgZXZ0LmtleUNvZGUgPT09IDM5KSB7XHJcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgZWxlbSA9ICg8SFRNTEVsZW1lbnQ+ZXZ0LmN1cnJlbnRUYXJnZXQpO1xyXG4gICAgICAgICAgICAgICAgICAgIG1ldGhvZChlbGVtKTtcclxuICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgfSwgdHJ1ZSk7XHJcbiAgICB9XHJcblxyXG4gICAgYmluZE9uQXJyb3dMZWZ0KG1ldGhvZDogYW55KTogdm9pZCB7XHJcblxyXG4gICAgICAgIGRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoXCJrZXlkb3duXCIsXHJcbiAgICAgICAgICAgIChldnQ6IEtleWJvYXJkRXZlbnQpID0+IHtcclxuICAgICAgICAgICAgICAgIGlmIChldnQgJiYgZXZ0LmtleUNvZGUgPT09IDM3KSB7XHJcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgZWxlbSA9ICg8SFRNTEVsZW1lbnQ+ZXZ0LmN1cnJlbnRUYXJnZXQpO1xyXG4gICAgICAgICAgICAgICAgICAgIG1ldGhvZChlbGVtKTtcclxuICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgfSwgdHJ1ZSk7XHJcbiAgICB9XHJcblxyXG4gICAgYmluZE9uQ2xpY2soc2VsZWN0b3I6IHN0cmluZywgbWV0aG9kOiBhbnkpOiB2b2lkIHtcclxuICAgICAgICBjb25zdCBlbGVtZW50cyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoc2VsZWN0b3IpO1xyXG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgZWxlbWVudHMubGVuZ3RoOyBpKyspIHtcclxuICAgICAgICAgICAgaWYgKGVsZW1lbnRzW2ldIGFzIEhUTUxFbGVtZW50KSB7XHJcbiAgICAgICAgICAgICAgICAoPEhUTUxFbGVtZW50PmVsZW1lbnRzW2ldKS5hZGRFdmVudExpc3RlbmVyKFwiY2xpY2tcIiwgbWV0aG9kLCB0cnVlKSA7XHJcbiAgICAgICAgICAgIH1cclxuICAgICAgICB9XHJcbiAgICB9XHJcblxyXG4gICAgYmluZE9uVG91Y2hTdGFydChzZWxlY3Rvcjogc3RyaW5nLCBtZXRob2Q6IGFueSk6IHZvaWQge1xyXG4gICAgICAgIGNvbnN0IGVsZW1lbnRzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3Rvcik7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtZW50cy5sZW5ndGg7IGkrKykge1xyXG4gICAgICAgICAgICBpZiAoZWxlbWVudHNbaV0gYXMgSFRNTEVsZW1lbnQpIHtcclxuICAgICAgICAgICAgICAgIGxldCBvcHRpb25zOiBBZGRFdmVudExpc3RlbmVyT3B0aW9ucyA9IHt9O1xyXG4gICAgICAgICAgICAgICAgb3B0aW9ucy5wYXNzaXZlID0gdHJ1ZTtcclxuICAgICAgICAgICAgICAgIG9wdGlvbnMuY2FwdHVyZSA9IHRydWU7XHJcbiAgICAgICAgICAgICAgICAoPEhUTUxFbGVtZW50PmVsZW1lbnRzW2ldKS5hZGRFdmVudExpc3RlbmVyKFwidG91Y2hzdGFydFwiLCBtZXRob2QsIG9wdGlvbnMpO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGJpbmRPbk1vdXNlRG93bihzZWxlY3Rvcjogc3RyaW5nLCBtZXRob2Q6IGFueSk6IHZvaWQge1xyXG4gICAgICAgIGNvbnN0IGVsZW1lbnRzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbChzZWxlY3Rvcik7XHJcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBlbGVtZW50cy5sZW5ndGg7IGkrKykge1xyXG4gICAgICAgICAgICBpZiAoZWxlbWVudHNbaV0gYXMgSFRNTEVsZW1lbnQpIHtcclxuICAgICAgICAgICAgICAgICg8SFRNTEVsZW1lbnQ+ZWxlbWVudHNbaV0pLmFkZEV2ZW50TGlzdGVuZXIoXCJtb3VzZWRvd25cIiwgbWV0aG9kLCB0cnVlKTtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBuYXZpZ2F0ZUFjdGl2ZUVsZW1lbnQoKSB7XHJcbiAgICAgICAgaWYgKGRvY3VtZW50LmFjdGl2ZUVsZW1lbnQpIHtcclxuICAgICAgICAgICAgY29uc3QgaHJlZiA9IGRvY3VtZW50LmFjdGl2ZUVsZW1lbnQuZ2V0QXR0cmlidXRlKFwiaHJlZlwiKTtcclxuICAgICAgICAgICAgaWYgKGhyZWYpIHtcclxuICAgICAgICAgICAgICAgIHdpbmRvdy5sb2NhdGlvbi5ocmVmID0gaHJlZjtcclxuICAgICAgICAgICAgfVxyXG4gICAgICAgIH1cclxuICAgIH1cclxuXHJcbiAgICBhZGRTZWFyY2hJbnB1dEFuaW1hdGlvbigpOiB2b2lkIHtcclxuICAgICAgICBjb25zdCBzZWFyY2hJbnB1dCA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIuc2VhcmNoIGlucHV0XCIpO1xyXG4gICAgICAgIGlmIChzZWFyY2hJbnB1dCkge1xyXG4gICAgICAgICAgICBzZWFyY2hJbnB1dC5hZGRFdmVudExpc3RlbmVyKFwiZm9jdXNpblwiLCAoKSA9PiB7XHJcbiAgICAgICAgICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5hZGQoXCJzZWFyY2hpbmdcIik7XHJcbiAgICAgICAgICAgIH0sIGZhbHNlKTtcclxuXHJcbiAgICAgICAgICAgIHNlYXJjaElucHV0LmFkZEV2ZW50TGlzdGVuZXIoXCJmb2N1c291dFwiLCAoKSA9PiB7XHJcbiAgICAgICAgICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHtcclxuICAgICAgICAgICAgICAgICAgICBkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5yZW1vdmUoXCJzZWFyY2hpbmdcIik7XHJcbiAgICAgICAgICAgICAgICB9LCAyMDApO1xyXG4gICAgICAgICAgICB9LCBmYWxzZSk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGhhc1Njcm9sbGVkKCk6IHZvaWQge1xyXG4gICAgICAgIGlmIChkb2N1bWVudC5ib2R5LmNsYXNzTGlzdC5jb250YWlucyhcInNlYXJjaGluZ1wiKSkge1xyXG4gICAgICAgICAgICByZXR1cm47XHJcbiAgICAgICAgfVxyXG5cclxuICAgICAgICBpZiAoZG9jdW1lbnQuc2Nyb2xsaW5nRWxlbWVudCkge1xyXG5cclxuICAgICAgICAgICAgY29uc3Qgc3QgPSBkb2N1bWVudC5zY3JvbGxpbmdFbGVtZW50LnNjcm9sbFRvcDtcclxuXHJcbiAgICAgICAgICAgIGlmIChNYXRoLmFicyh0aGlzLmxhc3RTY3JvbGxUb3AgLSBzdCkgPD0gdGhpcy5kZWx0YSlcclxuICAgICAgICAgICAgICAgIHJldHVybjtcclxuXHJcbiAgICAgICAgICAgIGlmIChzdCA+IHRoaXMubGFzdFNjcm9sbFRvcCAmJiBzdCA+IDEyMCkge1xyXG4gICAgICAgICAgICAgICAgZG9jdW1lbnQuYm9keS5jbGFzc0xpc3QuYWRkKFwic2Nyb2xsaW5nXCIpO1xyXG4gICAgICAgICAgICB9IGVsc2Uge1xyXG4gICAgICAgICAgICAgICAgLy8gU2Nyb2xsIFVwXHJcbiAgICAgICAgICAgICAgICBpZiAoc3QgKyB3aW5kb3cuaW5uZXJIZWlnaHQgPCBkb2N1bWVudC5ib2R5LmNsaWVudEhlaWdodCkge1xyXG4gICAgICAgICAgICAgICAgICAgIGRvY3VtZW50LmJvZHkuY2xhc3NMaXN0LnJlbW92ZShcInNjcm9sbGluZ1wiKTtcclxuICAgICAgICAgICAgICAgIH1cclxuICAgICAgICAgICAgfVxyXG5cclxuICAgICAgICAgICAgdGhpcy5sYXN0U2Nyb2xsVG9wID0gc3Q7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGF0dGFjaFNlYXJjaEZvcm1IYW5kbGVycygpOiB2b2lkIHtcclxuICAgICAgICBjb25zdCBzZWFyY2hJbnB1dCA9IDxIVE1MSW5wdXRFbGVtZW50PmRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoXCIjc2VhcmNoZm9ybSBpbnB1dFwiKTtcclxuICAgICAgICBpZiAoc2VhcmNoSW5wdXQpIHtcclxuICAgICAgICAgICAgc2VhcmNoSW5wdXQuYWRkRXZlbnRMaXN0ZW5lcihcImNoYW5nZVwiLCB0aGlzLmVuYWJsZVNlYXJjaFN1Ym1pdCwgdHJ1ZSk7XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxuICAgIGVuYWJsZVNlYXJjaFN1Ym1pdChldnQ6IEV2ZW50KTogdm9pZCB7XHJcbiAgICAgICAgaWYgKGV2dCAmJiBldnQuY3VycmVudFRhcmdldCBhcyBIVE1MSW5wdXRFbGVtZW50KSB7XHJcbiAgICAgICAgICAgIGNvbnN0IGVuYWJsZSA9ICg8SFRNTElucHV0RWxlbWVudD5ldnQuY3VycmVudFRhcmdldCkudmFsdWUgIT09IFwiXCI7XHJcblxyXG4gICAgICAgICAgICBjb25zdCBzZWFyY2hTdWJtaXQgPSA8SFRNTElucHV0RWxlbWVudD5kb2N1bWVudC5xdWVyeVNlbGVjdG9yKFwiI3NlYXJjaGZvcm0gYnV0dG9uW3R5cGU9J3N1Ym1pdCddXCIpO1xyXG4gICAgICAgICAgICBpZiAoc2VhcmNoU3VibWl0KSB7XHJcbiAgICAgICAgICAgICAgICBzZWFyY2hTdWJtaXQuZGlzYWJsZWQgPSAhZW5hYmxlO1xyXG4gICAgICAgICAgICAgICAgc2VhcmNoU3VibWl0LnNldEF0dHJpYnV0ZShcImFyaWEtZGlzYWJsZWRcIiwgZW5hYmxlID8gXCJmYWxzZVwiIDogXCJ0cnVlXCIpO1xyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfVxyXG5cclxufSIsIu+7v1widXNlIHN0cmljdFwiO1xyXG5pbXBvcnQgeyBVc2VyU2V0dGluZ3MgfSBmcm9tIFwiLi9ubGFwcC11c2Vyc2V0dGluZ3NcIjtcclxuaW1wb3J0IHsgTW9uaXRvcmluZ1NlcnZpY2UgfSBmcm9tIFwiLi9ubGFwcC1tb25pdG9yaW5nLnNlcnZpY2VcIjtcclxuaW1wb3J0IHsgSG9tZVZpZXcgfSBmcm9tIFwiLi9ubGFwcC12aWV3LWhvbWVcIjtcclxuaW1wb3J0IHsgV2Vsa29tVmlldyB9IGZyb20gXCIuL25sYXBwLXZpZXctd2Vsa29tXCI7XHJcbmltcG9ydCB7IENhdGVnb3JpZVZpZXcgfSBmcm9tIFwiLi9ubGFwcC12aWV3LWNhdGVnb3JpZVwiO1xyXG5pbXBvcnQgeyBPbmRlcndlcnBWaWV3IH0gZnJvbSBcIi4vbmxhcHAtdmlldy1vbmRlcndlcnBcIjtcclxuaW1wb3J0IHsgS2FhcnRWaWV3IH0gZnJvbSBcIi4vbmxhcHAtdmlldy1rYWFydFwiO1xyXG5pbXBvcnQgeyBab2VrUmVzdWx0YXRlblZpZXcgfSBmcm9tIFwiLi9ubGFwcC12aWV3LXpvZWtlblwiO1xyXG5pbXBvcnQgeyBIdG1sNDA0VmlldyB9IGZyb20gXCIuL25sYXBwLXZpZXctNDA0XCI7XHJcbmltcG9ydCB7IEhlbHBlcnMgfSBmcm9tIFwiLi9ubGFwcC1oZWxwZXJzXCI7XHJcblxyXG5jbGFzcyBOTGFwcCB7XHJcbiAgICByZWFkb25seSB1c2VyU2V0dGluZ3M6IFVzZXJTZXR0aW5ncztcclxuICAgIHJlYWRvbmx5IG1vbml0b3JpbmdTdmM6IE1vbml0b3JpbmdTZXJ2aWNlO1xyXG5cclxuICAgIHdlbGtvbTogV2Vsa29tVmlldztcclxuICAgIGhvbWU6IEhvbWVWaWV3O1xyXG4gICAgY2F0ZWdvcmllOiBDYXRlZ29yaWVWaWV3O1xyXG4gICAgb25kZXJ3ZXJwOiBPbmRlcndlcnBWaWV3O1xyXG4gICAga2FhcnQ6IEthYXJ0VmlldztcclxuICAgIHpvZWtlbjogWm9la1Jlc3VsdGF0ZW5WaWV3O1xyXG4gICAgaHRtbDQwNDogSHRtbDQwNFZpZXc7XHJcblxyXG4gICAgY29uc3RydWN0b3IoKSB7XHJcbiAgICAgICAgdGhpcy5tb25pdG9yaW5nU3ZjID0gbmV3IE1vbml0b3JpbmdTZXJ2aWNlKCk7XHJcbiAgICAgICAgdGhpcy51c2VyU2V0dGluZ3MgPSBuZXcgVXNlclNldHRpbmdzKCk7XHJcblxyXG4gICAgICAgIC8vIHZpZXdzXHJcbiAgICAgICAgdGhpcy53ZWxrb20gPSBuZXcgV2Vsa29tVmlldyh0aGlzLm1vbml0b3JpbmdTdmMsIHRoaXMudXNlclNldHRpbmdzKTtcclxuICAgICAgICB0aGlzLmhvbWUgPSBuZXcgSG9tZVZpZXcodGhpcy5tb25pdG9yaW5nU3ZjLCB0aGlzLnVzZXJTZXR0aW5ncyk7XHJcbiAgICAgICAgdGhpcy5jYXRlZ29yaWUgPSBuZXcgQ2F0ZWdvcmllVmlldyh0aGlzLm1vbml0b3JpbmdTdmMsIHRoaXMudXNlclNldHRpbmdzKTtcclxuICAgICAgICB0aGlzLm9uZGVyd2VycCA9IG5ldyBPbmRlcndlcnBWaWV3KHRoaXMubW9uaXRvcmluZ1N2YywgdGhpcy51c2VyU2V0dGluZ3MpO1xyXG4gICAgICAgIHRoaXMua2FhcnQgPSBuZXcgS2FhcnRWaWV3KHRoaXMubW9uaXRvcmluZ1N2YywgdGhpcy51c2VyU2V0dGluZ3MpO1xyXG4gICAgICAgIHRoaXMuem9la2VuID0gbmV3IFpvZWtSZXN1bHRhdGVuVmlldyh0aGlzLm1vbml0b3JpbmdTdmMsIHRoaXMudXNlclNldHRpbmdzKTtcclxuICAgICAgICB0aGlzLmh0bWw0MDQgPSBuZXcgSHRtbDQwNFZpZXcodGhpcy5tb25pdG9yaW5nU3ZjLCB0aGlzLnVzZXJTZXR0aW5ncywgXCJIdG1sNDA0XCIpO1xyXG5cclxuICAgICAgICBIZWxwZXJzLnNldFRleHREaXJlY3Rpb24oKTtcclxuICAgIH1cclxufVxyXG5cclxuT2JqZWN0LmRlZmluZVByb3BlcnR5KHdpbmRvdywgXCJubGFwcFwiLCB7IHZhbHVlOiBuZXcgTkxhcHAoKSB9KTtcclxuIl19
