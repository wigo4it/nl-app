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
var CategorieView = /** @class */ (function (_super) {
    __extends(CategorieView, _super);
    function CategorieView(monitoring, userSettings) {
        return _super.call(this, monitoring, userSettings) || this;
    }
    CategorieView.prototype.setContentViewName = function (name) {
        this._contentViewName = name;
    };
    CategorieView.prototype.viewName = function () {
        return this._contentViewName || "List";
    };
    CategorieView.prototype.init = function () {
        _super.prototype.init.call(this);
        this.bindOnClick(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnEnter(".up", nlapp_helpers_1.Helpers.scrollToTop);
        this.bindOnClick(".back", this.navigateBack);
        this.bindOnArrowRight(this.navigateActiveElement);
    };
    CategorieView.prototype.load = function () {
        _super.prototype.load.call(this);
        nlapp_helpers_1.Helpers.showScrollToTopButton();
    };
    CategorieView.prototype.navigateBack = function (evt) {
        if (evt && evt.currentTarget) {
            evt.preventDefault();
            evt.stopPropagation();
            document.body.classList.add("home");
            document.body.classList.add("leaving");
            document.body.classList.remove("cat-1");
            document.body.classList.remove("cat-2");
            document.body.classList.remove("cat-3");
            document.body.classList.remove("cat-4");
            document.body.classList.remove("cat-5");
            document.body.classList.remove("cat-6");
            var url_1 = evt.currentTarget.getAttribute("href");
            setTimeout(function () {
                window.location.href = url_1;
            }, 500);
        }
    };
    return CategorieView;
}(nlapp_view_1.ViewBase));
exports.CategorieView = CategorieView;
//# sourceMappingURL=nlapp-view-categorie.js.map