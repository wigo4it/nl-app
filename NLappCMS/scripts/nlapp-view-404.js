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
var Html404View = /** @class */ (function (_super) {
    __extends(Html404View, _super);
    function Html404View(monitoring, userSettings, viewName) {
        var _this = _super.call(this, monitoring, userSettings) || this;
        _this._viewName = viewName;
        return _this;
    }
    Html404View.prototype.viewName = function () {
        return this._viewName;
    };
    Html404View.prototype.init = function () {
        _super.prototype.init.call(this);
    };
    Html404View.prototype.load = function () {
        _super.prototype.load.call(this);
    };
    return Html404View;
}(nlapp_view_1.ViewBase));
exports.Html404View = Html404View;
//# sourceMappingURL=nlapp-view-404.js.map