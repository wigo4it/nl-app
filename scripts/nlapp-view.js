"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_pwa_1 = require("./nlapp-pwa");
var ViewBase = /** @class */ (function () {
    function ViewBase(monitoring, userSettings) {
        var _this = this;
        this.lastScrollTop = 0;
        this.delta = 5;
        this.logPageView = function (pageName) {
            // send trackPageView to AppInsights
            _this.monitoringSvc.logPage(pageName);
        };
        this.monitoringSvc = monitoring;
        this.userSettings = userSettings;
        this.pwaInstaller = new nlapp_pwa_1.PwaInstaller("pwaContent", "installPwa");
    }
    ViewBase.prototype.init = function () {
        this.pwaInstaller.init();
    };
    ;
    ViewBase.prototype.load = function () {
        var _this = this;
        this.logPageView(this.viewName());
        this.addSearchInputAnimation();
        this.attachSearchFormHandlers();
        window.addEventListener("scroll", function () {
            _this.didScroll = true;
        });
        setInterval(function () {
            if (_this.didScroll) {
                _this.hasScrolled();
                _this.didScroll = false;
            }
        }, 250);
    };
    ViewBase.prototype.bindOnKeyDown = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("keydown", method, true);
            }
        }
    };
    ViewBase.prototype.bindOnEnter = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("keydown", function (evt) {
                    if (evt && evt.keyCode === 13) {
                        var elem = evt.currentTarget;
                        method(elem);
                    }
                }, true);
            }
        }
    };
    ViewBase.prototype.bindOnEscape = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 27) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowUp = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 38) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowDown = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 40) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowRight = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 39) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnArrowLeft = function (method) {
        document.addEventListener("keydown", function (evt) {
            if (evt && evt.keyCode === 37) {
                var elem = evt.currentTarget;
                method(elem);
            }
        }, true);
    };
    ViewBase.prototype.bindOnClick = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("click", method, true);
            }
        }
    };
    ViewBase.prototype.bindOnTouchStart = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                var options = {};
                options.passive = true;
                options.capture = true;
                elements[i].addEventListener("touchstart", method, options);
            }
        }
    };
    ViewBase.prototype.bindOnMouseDown = function (selector, method) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            if (elements[i]) {
                elements[i].addEventListener("mousedown", method, true);
            }
        }
    };
    ViewBase.prototype.navigateActiveElement = function () {
        if (document.activeElement) {
            var href = document.activeElement.getAttribute("href");
            if (href) {
                window.location.href = href;
            }
        }
    };
    ViewBase.prototype.addSearchInputAnimation = function () {
        var searchInput = document.querySelector(".search input");
        if (searchInput) {
            searchInput.addEventListener("focusin", function () {
                document.body.classList.add("searching");
            }, false);
            searchInput.addEventListener("focusout", function () {
                setTimeout(function () {
                    document.body.classList.remove("searching");
                }, 200);
            }, false);
        }
    };
    ViewBase.prototype.hasScrolled = function () {
        if (document.body.classList.contains("searching")) {
            return;
        }
        if (document.scrollingElement) {
            var st = document.scrollingElement.scrollTop;
            if (Math.abs(this.lastScrollTop - st) <= this.delta)
                return;
            if (st > this.lastScrollTop && st > 120) {
                document.body.classList.add("scrolling");
            }
            else {
                // Scroll Up
                if (st + window.innerHeight < document.body.clientHeight) {
                    document.body.classList.remove("scrolling");
                }
            }
            this.lastScrollTop = st;
        }
    };
    ViewBase.prototype.attachSearchFormHandlers = function () {
        var searchInput = document.querySelector("#searchform input");
        if (searchInput) {
            searchInput.addEventListener("change", this.enableSearchSubmit, true);
        }
    };
    ViewBase.prototype.enableSearchSubmit = function (evt) {
        if (evt && evt.currentTarget) {
            var enable = evt.currentTarget.value !== "";
            var searchSubmit = document.querySelector("#searchform button[type='submit']");
            if (searchSubmit) {
                searchSubmit.disabled = !enable;
                searchSubmit.setAttribute("aria-disabled", enable ? "false" : "true");
            }
        }
    };
    return ViewBase;
}());
exports.ViewBase = ViewBase;
//# sourceMappingURL=nlapp-view.js.map