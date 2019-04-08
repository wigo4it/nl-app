"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class HomeView extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    viewName(): string {
        return "Home";
    }

    init(): void {
        super.init();

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
    }

    load(): void {
        super.load();
        this.showSplash();
    }

    showSplash(): void {
        if (this.userSettings.splashViewed) {
            document.getElementById("splash").classList.add("shown");
        }
        this.userSettings.splashViewed = true;
    }

    storeSettings = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            evt.preventDefault();

            const elem = (<HTMLElement>evt.currentTarget);
            const language = elem.getAttribute("data-language");
            const town = elem.getAttribute("data-town");

            // store user settings
            if (language && this.userSettings.language !== language) {
                // store language
                this.userSettings.language = language;

                // set active language
                Helpers.removeClassAll("#language button", "active");
                elem.classList.add("active");

                // show town panel
                const languageDivs = document.querySelectorAll("#town .lang");
                for (let i = 0; i < languageDivs.length; i++) {
                    languageDivs[i].classList.remove("active");
                    if (languageDivs[i].classList.contains(language)) {
                        languageDivs[i].classList.add("active");
                    }
                }
            }

            if (town && this.userSettings.town !== town) {
                // store town
                this.userSettings.town = town;

                // set active town
                const languageAnchors = document.querySelectorAll("#town .lang a");
                for (let i = 0; i < languageAnchors.length; i++) {
                    languageAnchors[i].classList.remove("active");

                    if (languageAnchors[i].getAttribute("data-town") === town) {
                        languageAnchors[i].classList.add("active");
                    }
                }
            }
        }
    }

    toggleMenu = (evt: Event): void => {
        const settingsPanel = document.getElementsByClassName("settings")[0];
        const settingsActive = settingsPanel.classList.contains("active");

        const currectUrl = window.location.pathname;
        const newUrl = this.userSettings.toPathName();

        if (settingsActive && (currectUrl !== newUrl)) {
            this.goHome();
            return;
        }

        // toggle classes
        settingsPanel.classList.toggle("active");
        document.body.classList.toggle("menuopen");

        if (settingsActive) {
            Helpers.removeQueryParamFromUrl(window.location.href, "settings");
        } else {
            Helpers.addQueryParamToUrl(window.location.href, "settings", "1");
        }

        // toggle aria-expanded
        const menu = document.getElementById("menu");
        const menuAriaExpanded = menu.getAttribute("aria-expanded") === "true";
        menu.setAttribute("aria-expanded", menuAriaExpanded ? "false" : "true");

        // toggle aria-hidden
        document.querySelector("main").setAttribute("aria-hidden", menuAriaExpanded ? "false" : "true");
        document.querySelector("header").setAttribute("aria-hidden", menuAriaExpanded ? "false" : "true");
        settingsPanel.setAttribute("aria-hidden", menuAriaExpanded ? "true" : "false");

        // create keyboard trap
        if (!menuAriaExpanded) {
            // to popup
            Helpers.toggleTabIndex(".settings, .settings a, .settings .menu", "header input, header button, main a");
            setTimeout(() => { (<HTMLElement>document.querySelector(".settings")).focus(); }, 500);
        }
        else {
            // to page
            Helpers.toggleTabIndex("header input, header button, main a", ".settings, .settings a, .settings .menu");
            setTimeout(() => { (<HTMLElement>document.querySelector("main")).focus(); }, 500);
        }
    }

    closeMenu = (evt: Event): void => {
        if (document.body.classList.contains("menuopen")) {
            this.toggleMenu(null);
        }
    }

    popupLanguage = (evt: Event): void => {
        evt.preventDefault();

        const isOffline = !!document.querySelector("body.offline");
        if (isOffline) {
            return;
        }

        this.closePopup(null);

        const popup = document.querySelector(".popup.language");
        if (popup) {
            document.getElementById("popupbg").classList.add("active");
            popup.classList.add("active");

            Helpers.toggleTabIndex(".popup.language.active a, .popup.language.active .close", ".settings, .settings a, .popup.town a, .popup.town .close");
            setTimeout(() => { (<HTMLElement>document.querySelector(".popup.language.active li a.active")).focus(); }, 500);
        }
    }

    popupTown = (evt: Event): void => {
        evt.preventDefault();

        const isOffline = !!document.querySelector("body.offline");
        if (isOffline) {
            return;
        }

        this.closePopup(null);

        const popup = document.querySelector(".popup.town");
        if (popup) {
            document.getElementById("popupbg").classList.add("active");
            popup.classList.add("active");

            Helpers.toggleTabIndex(".popup.town.active a, .popup.town.active .close", ".settings, .settings a, .popup.language a, .popup.language .close");
            setTimeout(() => { (<HTMLElement>document.querySelector(".popup.town.active li a.active")).focus(); }, 500);
        }
    }

    closePopup = (evt: Event): void => {
        const activePopup = document.querySelector(".popup.active");
        if (!activePopup) {
            return;
        }

        const isLanguagePopup = activePopup.classList.contains("language");
        activePopup.classList.remove("active");

        Helpers.toggleTabIndex(".settings, .settings a", ".popup.active a");

        // hide background
        document.getElementById("popupbg").classList.remove("active");

        // focus previous selected item
        setTimeout(() => { document.getElementById(isLanguagePopup ? "language" : "town").focus(); }, 500);
    }

    closePopupOrSettingsPanel = (): void => {
        const activePopup = document.querySelector(".popup.active");
        if (activePopup) {
            this.closePopup(null);
            return;
        }

        this.closeMenu(null);
    }

    redirectToHome = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            evt.preventDefault();

            const elem = (<HTMLElement>evt.currentTarget);
            if (elem.classList.contains("active")) {
                // already active, no navigation
                return;
            }

            // store user settings
            const language = elem.getAttribute("data-language");
            const town = elem.getAttribute("data-town");

            const prevSelection = document.querySelector(".popup.active a.active");
            prevSelection.classList.remove("active");
            
            elem.classList.add("active");

            if (language)
                this.userSettings.language = language;

            if (town)
                this.userSettings.town = town;

            if (this.userSettings.isValid()) {
                const url = this.userSettings.toHomeUrl();


                setTimeout(() => {
                    this.closePopup(null);
                    window.location.href = url + "?settings=1";
                }, 400);
            }
        }
    }

    highlightCategory = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            const elem = (<HTMLElement>evt.currentTarget);

            Helpers.removeClassAll(".categories ul li", "active");

            elem.parentElement.classList.add("active");
        }
    }

    openCategory(evt: Event): void {
        if (evt && <HTMLElement>evt.currentTarget) {
            evt.preventDefault();
            evt.stopPropagation();

            document.body.classList.add("leaving");

            const cat = (<HTMLElement>evt.currentTarget).parentElement.classList[0];
            document.body.classList.add(cat);

            const url = (<HTMLElement>evt.currentTarget).getAttribute("href");

            setTimeout(() => {
                window.location.href = url;
            }, 400);
        }
    }

    private goHome = (): void => {

        if (this.userSettings.isValid()) {
            const url = this.userSettings.toHomeUrl();
            window.location.href = url;
        }
    }

    private selectPreviousListItem = (): void => {
        const listItems = document.querySelectorAll(".popup.active a");
        let idx = listItems.length + 1;
        for (let i = 0; i < listItems.length; i++) {
            if ((<HTMLElement>listItems[i]) === document.activeElement) {
                idx = i;
                break;
            }
        }

        let prev: number = idx - 1;
        if (prev < 0) {
            prev = listItems.length;
        }

        (<HTMLElement>listItems[prev]).focus();
    }

    private selectNextListItem = (): void => {
        const listItems = document.querySelectorAll(".popup.active a");
        let idx = -1;
        for (let i = 0; i < listItems.length; i++) {
            if ((<HTMLElement>listItems[i]) === document.activeElement) {
                idx = i;
                break;
            }
        }

        let next: number = idx + 1;
        if (next > listItems.length) {
            next = 0;
        }

        (<HTMLElement>listItems[next]).focus();
    }
}
