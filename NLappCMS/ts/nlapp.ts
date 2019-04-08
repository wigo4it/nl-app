"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { HomeView } from "./nlapp-view-home";
import { WelkomView } from "./nlapp-view-welkom";
import { CategorieView } from "./nlapp-view-categorie";
import { OnderwerpView } from "./nlapp-view-onderwerp";
import { KaartView } from "./nlapp-view-kaart";
import { ZoekResultatenView } from "./nlapp-view-zoeken";
import { Html404View } from "./nlapp-view-404";
import { Helpers } from "./nlapp-helpers";

class NLapp {
    readonly userSettings: UserSettings;
    readonly monitoringSvc: MonitoringService;

    welkom: WelkomView;
    home: HomeView;
    categorie: CategorieView;
    onderwerp: OnderwerpView;
    kaart: KaartView;
    zoeken: ZoekResultatenView;
    html404: Html404View;

    constructor() {
        this.monitoringSvc = new MonitoringService();
        this.userSettings = new UserSettings();

        // views
        this.welkom = new WelkomView(this.monitoringSvc, this.userSettings);
        this.home = new HomeView(this.monitoringSvc, this.userSettings);
        this.categorie = new CategorieView(this.monitoringSvc, this.userSettings);
        this.onderwerp = new OnderwerpView(this.monitoringSvc, this.userSettings);
        this.kaart = new KaartView(this.monitoringSvc, this.userSettings);
        this.zoeken = new ZoekResultatenView(this.monitoringSvc, this.userSettings);
        this.html404 = new Html404View(this.monitoringSvc, this.userSettings, "Html404");

        Helpers.setTextDirection();
    }
}

Object.defineProperty(window, "nlapp", { value: new NLapp() });
