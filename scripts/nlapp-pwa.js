"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nlapp_monitoring_service_1 = require("./nlapp-monitoring.service");
var PwaInstaller = /** @class */ (function () {
    function PwaInstaller(installContainerId, installBtnId) {
        var _this = this;
        this.initial = true;
        this.init = function () {
            if ("serviceWorker" in navigator) {
                var scopeFromPath = _this.getScopeFromPathName(window.location.pathname);
                window.addEventListener("load", function () {
                    navigator.serviceWorker
                        .register("service-worker.js", { scope: scopeFromPath })
                        .then(function (reg) {
                        // registered
                        if (navigator.serviceWorker.controller) {
                            _this.serviceworker.postMessage({ action: "clearFiles" });
                        }
                        reg.onupdatefound = function () {
                            // An updated service worker has appeared in reg.installing!
                            _this.serviceworker = reg.installing;
                            _this.serviceworker.onstatechange = function () {
                                // Has service worker state changed?
                                switch (_this.serviceworker.state) {
                                    case "installed":
                                        // There is a new service worker available, automatically update the service worker
                                        if (navigator.serviceWorker.controller) {
                                            _this.serviceworker.postMessage({ action: "skipWaiting" });
                                        }
                                        break;
                                }
                            };
                        };
                    }).catch(function (err) {
                        // registration error
                    });
                });
                var installer_1 = _this;
                if (_this.isPwaInstalled()) {
                    installer_1.showIsInstalledButton();
                }
                else {
                    installer_1.hideInstallButton();
                    window.addEventListener("beforeinstallprompt", function (e) {
                        // prevent from automatically showing the prompt
                        e.preventDefault();
                        // stash the event so it can be triggered later
                        installer_1.deferredPrompt = e;
                        // update UI notify the user they can add to home screen
                        installer_1.showInstallButton();
                    });
                    window.addEventListener("appinstalled", function () {
                        installer_1.showIsInstalledButton();
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Application installed", true);
                        window.location.reload();
                    });
                }
            }
            else {
                // not supported
                _this.hideInstallButton();
            }
        };
        this.isPwaInstalled = function () {
            return ("serviceWorker" in navigator) && navigator.serviceWorker.controller && navigator.serviceWorker.controller.state === "activated" && window.matchMedia('(display-mode: standalone)').matches;
        };
        this.getScopeFromPathName = function (pathName) {
            if (pathName)
                return pathName.split("/", 3).join("/");
            return pathName;
        };
        this.showIsInstalledButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("active");
                _this.installContainer.classList.add("installed");
                _this.installButton.removeEventListener("click", _this.installApp, true);
                _this.initial = false;
            }
        };
        this.showInstallButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("installed");
                _this.installContainer.classList.add("active");
                _this.installButton.addEventListener("click", _this.installApp, true);
                _this.initial = false;
            }
        };
        this.hideInstallButton = function () {
            if (_this.installContainer && _this.installButton) {
                _this.installContainer.classList.remove("installed");
                _this.installContainer.classList.remove("active");
                _this.installButton.removeEventListener("click", _this.installApp, true);
            }
        };
        this.installApp = function (evt) {
            evt.preventDefault();
            if (!navigator.onLine) {
                return;
            }
            var prompt = _this.deferredPrompt;
            if (prompt) {
                // show the prompt
                prompt.prompt();
                // wait for the user to respond to the prompt
                _this.deferredPrompt.userChoice
                    .then(function (choiceResult) {
                    if (choiceResult.outcome === "accepted") {
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Installation accepted", true);
                    }
                    else {
                        new nlapp_monitoring_service_1.MonitoringService().logServiceWorker("Installation rejected", false);
                    }
                    prompt = null;
                });
            }
        };
        this.installContainer = document.getElementById(installContainerId);
        this.installButton = document.getElementById(installBtnId);
    }
    return PwaInstaller;
}());
exports.PwaInstaller = PwaInstaller;
//# sourceMappingURL=nlapp-pwa.js.map