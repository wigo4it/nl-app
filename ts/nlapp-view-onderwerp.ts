"use strict";
import { UserSettings } from "./nlapp-usersettings";
import { MonitoringService } from "./nlapp-monitoring.service";
import { ViewBase } from "./nlapp-view";
import { Helpers } from "./nlapp-helpers";

export class OnderwerpView extends ViewBase {

    constructor(monitoring: MonitoringService, userSettings: UserSettings) {
        super(monitoring, userSettings);
    }

    private _contentViewName: string;
    setContentViewName(name: string) {
        this._contentViewName = name;
    }

    viewName(): string {
        return this._contentViewName || "Detail";
    }

    init(): void {
        super.init();

        this.bindOnClick(".clickarea", this.chapterClick);
        this.bindOnEnter(".chapter", this.toggleChapter);
        this.bindOnArrowLeft(this.closeChapter);
        this.bindOnArrowRight(this.openChapter);
        this.bindOnClick(".share", this.shareUrl);
        this.bindOnClick(".external", this.openExtLink);
        this.bindOnClick(".up", Helpers.scrollToTop);
        this.bindOnEnter(".up", Helpers.scrollToTop);
    }

    load(): void {
        super.load();
        this.openChapterById();
        Helpers.showScrollToTopButton();
    }

    chapterClick = (evt: Event): void => {

        if (evt && <HTMLElement>evt.currentTarget) {
            let elem = (<HTMLElement>evt.currentTarget);

            // normal navigation for links within chapters
            if (elem.tagName === "A") {
                return;
            }

            evt.preventDefault();

            if (!elem.classList.contains("chapter")) {
                elem = elem.parentElement;
            }

            this.toggleChapter(elem);
        }
    }

    openChapterById = (): void => {
        const id = Helpers.getQueryStringParamByName("id");
        if (!id) {
            this.logPageView();
        }

        const chapter = document.querySelector(".chapter[data-id='" + id + "']");
        if (!chapter)
            return;

        chapter.scrollIntoView();
        chapter.classList.add("active");

        // send trackPageView to AppInsights
        this.monitoringSvc.logInternalLink(chapter);
    }

    openExtLink = (evt: Event): void => {
        if (evt && <HTMLElement>evt.currentTarget) {
            evt.preventDefault();
            evt.stopPropagation();

            const elem = (<HTMLElement>evt.currentTarget);
            const url = elem.getAttribute("href");

            // send logEvent to AppInsights
            this.monitoringSvc.logExternalLink(url);

            // open the link in a new window
            window.open(url, '_blank');
        }
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

    private toggleChapter = (chapterElem: Element): void => { 

        const isOpen = chapterElem.classList.contains("active");

        if (!isOpen) {
            chapterElem.classList.add("active");

            // send trackPageView to AppInsights
            this.monitoringSvc.logChapter(chapterElem);
        } else {
            chapterElem.classList.remove("active");
        }

        Helpers.showScrollToTopButton();

        // set tabindexes
        Helpers.toggleTabIndex(".chapter.active a", ".chapter:not(.active) a");
    }

    private openChapter = (): void => {
        const activeElem = document.activeElement;
        if (activeElem && activeElem.tagName === "H2") {
            const chapterElem = activeElem.parentElement;
            const isOpen = chapterElem.classList.contains("active");
            if (!isOpen) {
                this.toggleChapter(chapterElem);
            }
        }
    }

    private closeChapter = (): void => {
        const activeElem = document.activeElement;
        if (activeElem && activeElem.tagName === "H2") {
            const chapterElem = activeElem.parentElement;
            const isOpen = chapterElem.classList.contains("active");
            if (isOpen) {
                this.toggleChapter(chapterElem);
            }
        }
    }
}
