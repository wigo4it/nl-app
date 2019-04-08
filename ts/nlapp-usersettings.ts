"use strict";
import * as Cookies from "es-cookie";
import { Helpers } from "./nlapp-helpers";

export class UserSettings {

    private readonly cookieLanguageKey = "lang";
    private readonly cookieTownKey = "town";
    private readonly cookieSplashViewedKey = "splvwd";
    private readonly cookieCookieConsentAcceptedKey = "ccAccepted";
    private readonly cookieDisclaimerAcceptedKey = "disclaimerAccepted";
   
    get language(): string { return Cookies.get(this.cookieLanguageKey); };
    set language(val: string) {
        if (val)
            Cookies.set(this.cookieLanguageKey, val, { expires: 1000, secure: true });
        else
            Cookies.remove(this.cookieLanguageKey);
    };

    get town(): string { return Cookies.get(this.cookieTownKey); };
    set town(val: string) {
        if (val) {
            this.splashViewed = false;
            Cookies.set(this.cookieTownKey, val, { expires: 1000, secure: true });
        }
        else { 
            Cookies.remove(this.cookieTownKey);
        }
    };

    get splashViewed(): boolean { return Cookies.get(this.cookieSplashViewedKey) === "1"; };
    set splashViewed(val: boolean) {
        Cookies.set(this.cookieSplashViewedKey, val ? "1" : "0", { expires: 1000, secure: true });
    };

    get cookieConsentAccepted(): boolean { return Cookies.get(this.cookieCookieConsentAcceptedKey) === "1"; };
    set cookieConsentAccepted(val: boolean) {
        Cookies.set(this.cookieCookieConsentAcceptedKey, val ? "1" : "0", { expires: 1000, secure: true });
    };

    get disclaimerAccepted(): boolean { return Cookies.get(this.cookieDisclaimerAcceptedKey) === "1"; };
    set disclaimerAccepted(val: boolean) {
        Cookies.set(this.cookieDisclaimerAcceptedKey, val ? "1" : "0", { expires: 1000, secure: true });
    };

    isValid(): boolean {
        return this.language != undefined && this.town != undefined;
    }

    toHomeUrl(): string {
        const protocol = window.location.protocol;
        const host = window.location.host;
        
        const url = `${protocol}//${host}${this.toPathName()}`;
        return url.toLowerCase();
    }

    toPathName(): string {
        const pathName = this.isValid() ? `/${this.language}/${Helpers.toDomainName(this.town)}` : "";
        return pathName.toLowerCase();
    }
}
