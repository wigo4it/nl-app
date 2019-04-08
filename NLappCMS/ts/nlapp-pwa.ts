"use strict";
import { MonitoringService } from "./nlapp-monitoring.service";

export class PwaInstaller {

    private deferredPrompt: any;
    private initial: boolean = true;
    private readonly installContainer: HTMLElement;
    private readonly installButton: HTMLElement;
    private serviceworker: ServiceWorker;


    constructor(installContainerId: string, installBtnId: string) {
        this.installContainer = document.getElementById(installContainerId);
        this.installButton = document.getElementById(installBtnId);
    }

    init = () => {
        if ("serviceWorker" in navigator) {

            var scopeFromPath = this.getScopeFromPathName(window.location.pathname);

            window.addEventListener("load",
                () => {
                    navigator.serviceWorker
                        .register("service-worker.js", { scope: scopeFromPath })
                        .then((reg: ServiceWorkerRegistration) => {
                            // registered

                            if (navigator.serviceWorker.controller) {
                                this.serviceworker.postMessage({ action: "clearFiles" });
                            }

                            reg.onupdatefound = () => {
                                // An updated service worker has appeared in reg.installing!
                                this.serviceworker = reg.installing;

                                this.serviceworker.onstatechange = () => {

                                    // Has service worker state changed?
                                    switch (this.serviceworker.state) {
                                    case "installed":

                                        // There is a new service worker available, automatically update the service worker
                                        if (navigator.serviceWorker.controller) {
                                            this.serviceworker.postMessage({ action: "skipWaiting" });
                                        }

                                        break;
                                    }
                                };
                            };
                        }).catch((err) => {
                            // registration error
                        });
                });


            const installer = this;

            if (this.isPwaInstalled()) {
                installer.showIsInstalledButton();
            } else {

                installer.hideInstallButton();

                window.addEventListener("beforeinstallprompt",
                    (e: Event) => {
                        // prevent from automatically showing the prompt
                        e.preventDefault();

                        // stash the event so it can be triggered later
                        installer.deferredPrompt = e;

                        // update UI notify the user they can add to home screen
                        installer.showInstallButton();
                    });

                window.addEventListener("appinstalled",
                    () => {
                        installer.showIsInstalledButton();
                        new MonitoringService().logServiceWorker("Application installed", true);
                        window.location.reload();
                    });
            }

        } else {
            // not supported
            this.hideInstallButton();
        }
    }

    private isPwaInstalled = (): boolean => {
        return ("serviceWorker" in navigator) && navigator.serviceWorker.controller && navigator.serviceWorker.controller.state === "activated" && window.matchMedia('(display-mode: standalone)').matches;
    }

    private getScopeFromPathName = (pathName: string): string => {
        if (pathName)
            return pathName.split("/", 3).join("/");

        return pathName;
    }

    private showIsInstalledButton = () => {
        if (this.installContainer && this.installButton) {
            this.installContainer.classList.remove("active");
            this.installContainer.classList.add("installed");
            this.installButton.removeEventListener("click", this.installApp, true);
            this.initial = false;
        }
    }

    private showInstallButton = () => {
        if (this.installContainer && this.installButton) {
            this.installContainer.classList.remove("installed");
            this.installContainer.classList.add("active");
            this.installButton.addEventListener("click", this.installApp, true);
            this.initial = false;
        }
    }

    private hideInstallButton = () => {
        if (this.installContainer && this.installButton) {
            this.installContainer.classList.remove("installed");
            this.installContainer.classList.remove("active");
            this.installButton.removeEventListener("click", this.installApp, true);
        }
    }

    private installApp = (evt: Event) => {
        evt.preventDefault();

        if (!navigator.onLine) {
            return;
        }

        let prompt = this.deferredPrompt;
        if (prompt) {
            // show the prompt
            prompt.prompt();
            // wait for the user to respond to the prompt
            this.deferredPrompt.userChoice
                .then((choiceResult: any) => {
                    if (choiceResult.outcome === "accepted") {
                        new MonitoringService().logServiceWorker("Installation accepted", true);
                    } else {
                        new MonitoringService().logServiceWorker("Installation rejected", false);
                    }
                    prompt = null;
                } );
        }
    }
}
