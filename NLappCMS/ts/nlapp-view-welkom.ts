"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class WelkomView extends ViewBase {
    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    viewName(): string {
        return "Welkom";
    }

    init(): void {
        super.init();

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
    }

    load(): void {
        super.load();
    }

    showStep1 = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            this.goBack();
        }
    }

    showStep2 = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            const elem = (<HTMLElement>evt.currentTarget);

            this.gotoStep2(elem);
        }
    }

    redirectToHome = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            evt.preventDefault();

            // store user settings
            const elem = (<HTMLElement>evt.currentTarget);
            this.gotoHome(elem);
        }
    }

    tryForwardToHome = (): void => {
        if (this.userSettings.isValid()) {
            const url = this.userSettings.toHomeUrl();
            window.location.href = url;
        }
    }

    acceptDisclaimers = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            const divDisclaimer = <HTMLElement>document.querySelector(".disclaimer.active");
            divDisclaimer.classList.remove("active");

            this.userSettings.cookieConsentAccepted = true;
            this.userSettings.disclaimerAccepted = true;
        }
    }

    private selectPreviousListItem = (): void => {
        const selector = document.body.classList.contains("step2") ? "#town .lang.active a" : "#language button";
        const listItems = document.querySelectorAll(selector);
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
        const selector = document.body.classList.contains("step2") ? "#town .lang.active a" : "#language button";
        const listItems = document.querySelectorAll(selector);
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

    private showNextStep = (): void => {
        const isStep2 = document.body.classList.contains("step2");
        if (isStep2) {
            this.gotoHome(<HTMLElement>document.activeElement);
        } else {
            this.gotoStep2(<HTMLElement>document.activeElement);
        }
    }

    private gotoStep2 = (elem: HTMLElement): void => {
        if (elem) {
            Helpers.removeClassAll(".disclaimer", "active");
            Helpers.removeClassAll("#town .lang", "active");
            Helpers.removeClassAll("#language button", "active");

            elem.classList.add("active");

            const body = document.getElementsByTagName("body")[0];
            body.classList.add("step2");

            const language = elem.getAttribute("data-language");
            const divLanguage = <HTMLElement>document.querySelector(".lang." + language);
            divLanguage.classList.add("active");

            if (!this.userSettings.cookieConsentAccepted || !this.userSettings.disclaimerAccepted) {
                const divDisclaimer = <HTMLElement>document.querySelector(".disclaimer." + language);
                divDisclaimer.classList.add("active");
            }

            // toggle aria-hidden
            Helpers.toggleAriaHidden(".lang.active, .disclaimer.active, #town");
            // toggle tab indexes
            Helpers.toggleTabIndex("#town a, .back", "#language button");

            // set focus
            setTimeout(() => {
                Helpers.setRtl(language.substr(0, 2).toLowerCase() === "ar");
                (<HTMLElement>divLanguage.querySelector("a")).focus();
            }, 1000);
        }
    }

    private gotoHome = (elem: HTMLElement): void => {
        if (elem) {
            elem.classList.add("active");

            const language = elem.getAttribute("data-language");
            const town = elem.getAttribute("data-town");

            this.userSettings.language = language;
            this.userSettings.town = town;

            if (this.userSettings.isValid()) {

                this.userSettings.disclaimerAccepted = true;
                this.userSettings.cookieConsentAccepted = true;

                const url = this.userSettings.toHomeUrl();

                setTimeout(() => {
                    window.location.href = url;
                }, 800);
            }
        }
    }

    private goBack = (): void => {
        const body = document.getElementsByTagName("body")[0];
        body.classList.remove("step2");

        // toggle aria-hidden
        Helpers.toggleAriaHidden("#language");
        // toggle tab indexes
        Helpers.toggleTabIndex("#language button", "#town a, .back");

        // set focus
        const elemFocus = document.querySelector("#language button.active");
        setTimeout(() => {
                Helpers.setRtl(false);
                (<HTMLElement>elemFocus).focus();
            },
            400);
    }
}
