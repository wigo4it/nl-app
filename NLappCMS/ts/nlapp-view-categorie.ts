"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class CategorieView extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    private _contentViewName: string;
    setContentViewName(name: string) {
        this._contentViewName = name;
    }

    viewName(): string {
        return this._contentViewName || "List";
    }

    init(): void {
        super.init();

        this.bindOnClick(".up", Helpers.scrollToTop);
        this.bindOnEnter(".up", Helpers.scrollToTop);
        this.bindOnClick(".back", this.navigateBack);
        this.bindOnArrowRight(this.navigateActiveElement);
    }

    load(): void {
        super.load();
        Helpers.showScrollToTopButton();
    }

    private navigateBack(evt: Event): void {
        if (evt && <HTMLElement>evt.currentTarget) {
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
            
            const url = (<HTMLElement>evt.currentTarget).getAttribute("href");

            setTimeout(() => {
                window.location.href = url;
            }, 500);
        }
    }
}