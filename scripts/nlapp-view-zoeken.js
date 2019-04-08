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
var ZoekResultatenView = /** @class */ (function (_super) {
    __extends(ZoekResultatenView, _super);
    function ZoekResultatenView(monitoring, userSettings) {
        return _super.call(this, monitoring, userSettings) || this;
    }
    ZoekResultatenView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    ZoekResultatenView.prototype.viewName = function () {
        return this._contentViewName || "Zoekresultaten";
    };
    ZoekResultatenView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
    };
    ZoekResultatenView.prototype.load = function () {
        _super.prototype.load.call(this);
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    return ZoekResultatenView;
}(nlapp_view_1.ViewBase));
exports.ZoekResultatenView = ZoekResultatenView;
//# sourceMappingURL=nlapp-view-zoeken.js.map