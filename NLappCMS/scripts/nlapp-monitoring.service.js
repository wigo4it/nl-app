"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_helpers_1 = require("./nlapp-helpers");
var MonitoringService = /** @class */ (function () {
    function MonitoringService() {
        var _this = this;
        this.logPage = function (viewName) {
            var pageUrl = window.location.href;
            var pageName = nlapp_helpers_1.Helpers.getViewName(viewName);
            _this.logPageView(pageName, pageUrl);
        };
        this.logChapter = function (chapter) {
            var pageName = chapter.getAttribute("data-name");
            pageName = nlapp_helpers_1.Helpers.getViewName(pageName);
            var pageUrl = chapter.getAttribute("data-url");
            _this.logPageView(pageName, pageUrl);
        };
        this.logInternalLink = function (chapter) {
            var pageName = chapter.getAttribute("data-name");
            pageName = nlapp_helpers_1.Helpers.getViewName(pageName);
            var pageUrl = chapter.getAttribute("data-url");
            var fromUrl = nlapp_helpers_1.Helpers.getQueryStringParamByName("from");
            _this.logPageView(pageName, pageUrl, fromUrl ? { fromUrl: fromUrl } : null);
        };
        this.logExternalLink = function (url) {
            _this.logEvent("ExternalLink", { externalUrl: url });
        };
        this.logShareLink = function (url) {
            _this.logEvent("ShareLink", { shareUrl: url });
        };
        this.logServiceWorker = function (action, succes) {
            _this.logEvent("Service worker", { action: action, succes: succes });
        };
        this.logPageView = function (name, url, properties, measurements, duration) {
            if (window.appInsights && navigator && navigator.onLine) {
                window.appInsights.trackPageView(name, url, properties, measurements, duration);
            }
        };
        this.logEvent = function (name, properties, measurements) {
            if (window.appInsights && navigator && navigator.onLine) {
                window.appInsights.trackEvent(name, properties, measurements);
            }
        };
    }
    return MonitoringService;
}());
exports.MonitoringService = MonitoringService;
//# sourceMappingURL=nlapp-monitoring.service.js.map