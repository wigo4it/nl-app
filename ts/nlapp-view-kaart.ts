"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class KaartView extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    private _contentViewName: string;
    setContentViewName(name: string) {
        this._contentViewName = name;
    }

    viewName(): string {
        return this._contentViewName || "Kaart";
    }

    init(): void {
        super.init();

        this.bindOnClick(".share", this.shareUrl);
    }

    load(): void {
        super.load();
    }

    shareUrl = (evt: Event): boolean => {

        if (evt && <HTMLElement>evt.currentTarget) {
            let elem = (<HTMLElement>evt.currentTarget);
            if (elem.tagName !== "A") {
                elem = elem.parentElement;
            }
            evt.preventDefault();
            evt.stopPropagation();

            const shareTitle = elem.getAttribute("data-title");
            const shareUrl = elem.getAttribute("data-url");
            if (!shareUrl) {
                return false;
            }

            elem.classList.add("active");

            // send logEvent to AppInsights
            this.monitoringSvc.logShareLink(shareUrl.replace(window.location.origin, ""));

            return Helpers.share(shareTitle, shareUrl);
        }
    }
}