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
//# sourceMappingURL=nlapp-usersettings.js.map