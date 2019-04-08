"use strict";
import { Helpers } from "./nlapp-helpers";

export class MonitoringService {

    logPage = (viewName?: string): void => {
        const pageUrl = window.location.href;
        const pageName = Helpers.getViewName(viewName);
        this.logPageView(pageName, pageUrl);
    }

    logChapter = (chapter: Element): void => {
        let pageName = chapter.getAttribute("data-name");
        pageName = Helpers.getViewName(pageName);

        const pageUrl = chapter.getAttribute("data-url");

        this.logPageView(pageName, pageUrl);
    }

    logInternalLink = (chapter: Element): void => {
        let pageName = chapter.getAttribute("data-name");
        pageName = Helpers.getViewName(pageName);

        const pageUrl = chapter.getAttribute("data-url");
        const fromUrl = Helpers.getQueryStringParamByName("from");

        this.logPageView(pageName, pageUrl, fromUrl ? { fromUrl: fromUrl } : null);
    }

    logExternalLink = (url: string): void => {
        this.logEvent("ExternalLink", { externalUrl: url });
    }

    logShareLink = (url: string): void => {
        this.logEvent("ShareLink", { shareUrl: url });
    }

    logServiceWorker = (action: string, succes: boolean): void => {
        this.logEvent("Service worker", { action: action, succes: succes });
    }

    private logPageView = (name?: string, url?: string, properties?: any, measurements?: any, duration?: number): void => {
        if ((<any>window).appInsights && navigator && navigator.onLine) {
            (<any>window).appInsights.trackPageView(name, url, properties, measurements, duration);
        }
    }

    private logEvent = (name: string, properties?: any, measurements?: any): void => {
        if ((<any>window).appInsights && navigator && navigator.onLine) {
            (<any>window).appInsights.trackEvent(name, properties, measurements);
        }
    }
}
