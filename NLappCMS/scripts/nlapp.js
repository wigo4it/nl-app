"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_usersettings_1 = require("./nlapp-usersettings");
var nlapp_monitoring_service_1 = require("./nlapp-monitoring.service");
var nlapp_view_home_1 = require("./nlapp-view-home");
var nlapp_view_welkom_1 = require("./nlapp-view-welkom");
var nlapp_view_categorie_1 = require("./nlapp-view-categorie");
var nlapp_view_onderwerp_1 = require("./nlapp-view-onderwerp");
var nlapp_view_kaart_1 = require("./nlapp-view-kaart");
var nlapp_view_zoeken_1 = require("./nlapp-view-zoeken");
var nlapp_view_404_1 = require("./nlapp-view-404");
var nlapp_helpers_1 = require("./nlapp-helpers");
var NLapp = /** @class */ (function () {
    function NLapp() {
        this.monitoringSvc = new nlapp_monitoring_service_1.MonitoringService();
        this.userSettings = new nlapp_usersettings_1.UserSettings();
        // views
        this.welkom = new nlapp_view_welkom_1.WelkomView(this.monitoringSvc, this.userSettings);
        this.home = new nlapp_view_home_1.HomeView(this.monitoringSvc, this.userSettings);
        this.categorie = new nlapp_view_categorie_1.CategorieView(this.monitoringSvc, this.userSettings);
        this.onderwerp = new nlapp_view_onderwerp_1.OnderwerpView(this.monitoringSvc, this.userSettings);
        this.kaart = new nlapp_view_kaart_1.KaartView(this.monitoringSvc, this.userSettings);
        this.zoeken = new nlapp_view_zoeken_1.ZoekResultatenView(this.monitoringSvc, this.userSettings);
        this.html404 = new nlapp_view_404_1.Html404View(this.monitoringSvc, this.userSettings, "Html404");
        nlapp_helpers_1.Helpers.setTextDirection();
    }
    return NLapp;
}());
Object.defineProperty(window, "nlapp", { value: new NLapp() });
//# sourceMappingURL=nlapp.js.map