"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";

export class Html404View extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings, viewName : string) {
        super(monitoring, userSettings);
        this._viewName = viewName;
    }

    private _viewName: string;

    viewName(): string {
        return this._viewName;
    }

    init(): void {
        super.init();
    }

    load(): void {
        super.load();
    }
}