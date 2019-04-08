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
//# sourceMappingURL=nlapp-view-welkom.js.map