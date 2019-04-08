"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    }
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var OnderwerpView = /** @class */ (function (_super) {
    __extends(OnderwerpView, _super);
    function OnderwerpView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this.chapterClick = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                // normal navigation for links within chapters
                if (elem.tagName === "A") {
                    return;
                }
                evt.preventDefault();
                if (!elem.classList.contains("chapter")) {
                    elem = elem.parentElement;
                }
                _this.toggleChapter(elem);
            }
        };
        _this.openChapterById = function () {
            var id = nlapp_helpers_1.Helpers.getQueryStringParamByName("id");
            if (!id) {
                _this.logPageView();
            }
            var chapter = document.querySelector(".chapter[data-id='" + id + "']");
            if (!chapter)
                return;
            chapter.scrollIntoView();
            chapter.classList.add("active");
            // send trackPageView to AppInsights
            _this.monitoringSvc.logInternalLink(chapter);
        };
        _this.openExtLink = function (evt) {
            if (evt && evt.currentTarget) {
                evt.preventDefault();
                evt.stopPropagation();
                var elem = evt.currentTarget;
                var url = elem.getAttribute("href");
                // send logEvent to AppInsights
                _this.monitoringSvc.logExternalLink(url);
                // open the link in a new window
                window.open(url, '_blank');
            }
        };
        _this.shareUrl = function (evt) {
            if (evt && evt.currentTarget) {
                var elem = evt.currentTarget;
                if (elem.tagName !== "A") {
                    elem = elem.parentElement;
                }
                evt.preventDefault();
                evt.stopPropagation();
                var shareTitle = elem.getAttribute("data-title");
                var shareUrl = elem.getAttribute("data-url");
                if (!shareUrl) {
                    return false;
                }
                elem.classList.add("active");
                // send logEvent to AppInsights
                _this.monitoringSvc.logShareLink(shareUrl.replace(window.location.origin, ""));
                return nlapp_helpers_1.Helpers.share(shareTitle, shareUrl);
            }
        };
        _this.toggleChapter = function (chapterElem) {
            var isOpen = chapterElem.classList.contains("active");
            if (!isOpen) {
                chapterElem.classList.add("active");
                // send trackPageView to AppInsights
                _this.monitoringSvc.logChapter(chapterElem);
            }
            else {
                chapterElem.classList.remove("active");
            }
            nlapp_helpers_1.Helpers.showScrollToTopButton();
            // set tabindexes
            nlapp_helpers_1.Helpers.toggleTabIndex(".chapter.active a", ".chapter:not(.active) a");
        };
        _this.openChapter = function () {
            var activeElem = document.activeElement;
            if (activeElem && activeElem.tagName === "H2") {
                var chapterElem = activeElem.parentElement;
                var isOpen = chapterElem.classList.contains("active");
                if (!isOpen) {
                    _this.toggleChapter(chapterElem);
                }
            }
        };
        _this.closeChapter = function () {
            var activeElem = document.activeElement;
            if (activeElem && activeElem.tagName === "H2") {
                var chapterElem = activeElem.parentElement;
                var isOpen = chapterElem.classList.contains("active");
                if (isOpen) {
                    _this.toggleChapter(chapterElem);
                }
            }
        };
        return _this;
    }
    OnderwerpView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    OnderwerpView.prototype.viewName = function () {
        return this._contentViewName || "Detail";
    };
    OnderwerpView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".clickarea", this.chapterClick);
        this.bindOnEnter(".chapter", this.toggleChapter);
        this.bindOnArrowLeft(this.closeChapter);
        this.bindOnArrowRight(this.openChapter);
        this.bindOnClick(".share", this.shareUrl);
        this.bindOnClick(".external", this.openExtLink);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
    };
    OnderwerpView.prototype.load = function () {
        _super.prototype.load.call(this);
        this.openChapterById();
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    return OnderwerpView;
}(nlapp_view_1.ViewBase));
exports.OnderwerpView = OnderwerpView;
//# sourceMappingURL=nlapp-view-onderwerp.js.map