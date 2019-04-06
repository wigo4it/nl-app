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
//# sourceMappingURL=nlapp-view-home.js.map