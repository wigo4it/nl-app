"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_view_1 = require("./nlapp-view");
var nlapp_helpers_1 = require("./nlapp-helpers");
var KaartView = /** @class */ (function (_super) {
    __extends(KaartView, _super);
    function KaartView(monitoring, userSettings) {
        var _this = _super.call(this, monitoring, userSettings) || this;
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
        return _this;
    }
    KaartView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    KaartView.prototype.viewName = function () {
        return this._contentViewName || "Kaart";
    };
    KaartView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".share", this.shareUrl);
    };
    KaartView.prototype.load = function () {
        _super.prototype.load.call(this);
    };
    return KaartView;
}(nlapp_view_1.ViewBase));
exports.KaartView = KaartView;
//# sourceMappingURL=nlapp-view-kaart.js.map