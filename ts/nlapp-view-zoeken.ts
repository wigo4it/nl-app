"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class ZoekResultatenView extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    private _contentViewName: string;
    setContentViewName(name: string) {
        this._contentViewName = name;
    }

    viewName(): string {
        return this._contentViewName || "Zoekresultaten";
    }

    init(): void {
        super.init();

        this.bindOnClick(".up", Helpers.scrollToTop);
        this.bindOnEnter(".up", Helpers.scrollToTop);
    }

    load(): void {
        super.load();
        Helpers.showScrollToTopButton();
    }
}
