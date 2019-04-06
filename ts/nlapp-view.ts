"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { PwaInstaller } from "./nlapp-pwa";

export abstract class ViewBase {
    protected monitoringSvc: MonitoringService;
    protected userSettings: UserSettings;
    protected pwaInstaller: PwaInstaller;

    private didScroll: boolean;
    private lastScrollTop = 0;
    private delta = 5;

    protected constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        this.monitoringSvc = monitoring;
        this.userSettings = userSettings;
        this.pwaInstaller = new PwaInstaller("pwaContent", "installPwa");
    }

    logPageView = (pageName?: string): void => {
        // send trackPageView to AppInsights
        this.monitoringSvc.logPage(pageName);
    }

    abstract viewName(): string;

    init(): void {
        this.pwaInstaller.init();
    };

    load(): void {
        this.logPageView(this.viewName());

        this.addSearchInputAnimation();
        this.attachSearchFormHandlers();

        window.addEventListener("scroll", () => {
            this.didScroll = true;
        });

        setInterval(() => {
            if (this.didScroll) {
                this.hasScrolled();
                this.didScroll = false;
            }
        }, 250);
    }

    bindOnKeyDown(selector: string, method: any): void {
        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            if (elements[i] as HTMLElement) {
                (<HTMLElement>elements[i]).addEventListener("keydown", method, true);
            }
        }
    }

    bindOnEnter(selector: string, method: any): void {
        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            if (elements[i] as HTMLElement) {
                (<HTMLElement>elements[i]).addEventListener("keydown",
                        (evt:  KeyboardEvent) => {
                            if (evt && evt.keyCode === 13) {
                                const elem = (<HTMLElement>evt.currentTarget);
                                method(elem);
                            }
                        }, true);
            }
        }
    }

    bindOnEscape(method: any): void {

        document.addEventListener("keydown",
            (evt: KeyboardEvent) => {
                if (evt && evt.keyCode === 27) {
                    const elem = (<HTMLElement>evt.currentTarget);
                    method(elem);
                }
            }, true);
    }

    bindOnArrowUp(method: any): void {

        document.addEventListener("keydown",
            (evt: KeyboardEvent) => {
                if (evt && evt.keyCode === 38) {
                    const elem = (<HTMLElement>evt.currentTarget);
                    method(elem);
                }
            }, true);
    }

    bindOnArrowDown(method: any): void {

        document.addEventListener("keydown",
            (evt: KeyboardEvent) => {
                if (evt && evt.keyCode === 40) {
                    const elem = (<HTMLElement>evt.currentTarget);
                    method(elem);
                }
            }, true);
    }

    bindOnArrowRight(method: any): void {

        document.addEventListener("keydown",
            (evt: KeyboardEvent) => {
                if (evt && evt.keyCode === 39) {
                    const elem = (<HTMLElement>evt.currentTarget);
                    method(elem);
                }
            }, true);
    }

    bindOnArrowLeft(method: any): void {

        document.addEventListener("keydown",
            (evt: KeyboardEvent) => {
                if (evt && evt.keyCode === 37) {
                    const elem = (<HTMLElement>evt.currentTarget);
                    method(elem);
                }
            }, true);
    }

    bindOnClick(selector: string, method: any): void {
        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            if (elements[i] as HTMLElement) {
                (<HTMLElement>elements[i]).addEventListener("click", method, true) ;
            }
        }
    }

    bindOnTouchStart(selector: string, method: any): void {
        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            if (elements[i] as HTMLElement) {
                let options: AddEventListenerOptions = {};
                options.passive = true;
                options.capture = true;
                (<HTMLElement>elements[i]).addEventListener("touchstart", method, options);
            }
        }
    }

    bindOnMouseDown(selector: string, method: any): void {
        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            if (elements[i] as HTMLElement) {
                (<HTMLElement>elements[i]).addEventListener("mousedown", method, true);
            }
        }
    }

    navigateActiveElement() {
        if (document.activeElement) {
            const href = document.activeElement.getAttribute("href");
            if (href) {
                window.location.href = href;
            }
        }
    }

    addSearchInputAnimation(): void {
        const searchInput = document.querySelector(".search input");
        if (searchInput) {
            searchInput.addEventListener("focusin", () => {
                document.body.classList.add("searching");
            }, false);

            searchInput.addEventListener("focusout", () => {
                setTimeout(() => {
                    document.body.classList.remove("searching");
                }, 200);
            }, false);
        }
    }

    hasScrolled(): void {
        if (document.body.classList.contains("searching")) {
            return;
        }

        if (document.scrollingElement) {

            const st = document.scrollingElement.scrollTop;

            if (Math.abs(this.lastScrollTop - st) <= this.delta)
                return;

            if (st > this.lastScrollTop && st > 120) {
                document.body.classList.add("scrolling");
            } else {
                // Scroll Up
                if (st + window.innerHeight < document.body.clientHeight) {
                    document.body.classList.remove("scrolling");
                }
            }

            this.lastScrollTop = st;
        }
    }

    attachSearchFormHandlers(): void {
        const searchInput = <HTMLInputElement>document.querySelector("#searchform input");
        if (searchInput) {
            searchInput.addEventListener("change", this.enableSearchSubmit, true);
        }
    }

    enableSearchSubmit(evt: Event): void {
        if (evt && evt.currentTarget as HTMLInputElement) {
            const enable = (<HTMLInputElement>evt.currentTarget).value !== "";

            const searchSubmit = <HTMLInputElement>document.querySelector("#searchform button[type='submit']");
            if (searchSubmit) {
                searchSubmit.disabled = !enable;
                searchSubmit.setAttribute("aria-disabled", enable ? "false" : "true");
            }
        }
    }

}