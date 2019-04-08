"use strict";
export class Helpers {
    static getHtmlElement(selector: string) : HTMLElement {
        let elem: HTMLElement;
        if (selector[0] === ".") {
            elem = <HTMLElement>document.getElementsByClassName(selector)[0];
        } else {
            const elemId = selector[0] === "#" ? selector.substr(1) : selector;
            elem = document.getElementById(elemId);
        }

        return elem;
    }

    static toDomainName(name: string): string {
        const urlComp = name.replace(" ", "-");
        return urlComp;
    }

    static getQueryStringParamByName(name: string): string {
        name = name.replace(/[\[\]]/g, "\\$&");
        const regex = new RegExp(`[?&]${name}(=([^&#]*)|&|#|$)`);

        const url = window.location.href;
        const results = regex.exec(url);

        if (!results) return null;
        if (!results[2]) return "";
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }

    static removeQueryParamFromUrl(url: string, name: string): string {
        let urlparts = url.split("?");
        if (urlparts.length >= 2) {

            var prefix = encodeURIComponent(name) + "=";
            var pars = urlparts[1].split(/[&;]/g);

            // reverse iteration as may be destructive
            for (var i = pars.length; i-- > 0;) {
                // idiom for string.startsWith
                if (pars[i].lastIndexOf(prefix, 0) !== -1) {
                    pars.splice(i, 1);
                }
            }

            url = urlparts[0] + (pars.length > 0 ? "?" + pars.join("&") : "");
            window.history.pushState({ path: url }, '', url);
            return url;
        } else {
            return url;
        }
    }

    static addQueryParamToUrl(url: string, name: string, value: string): void {
        if (history.pushState) {
            // remove any param for the same key
            var currentUrl = Helpers.removeQueryParamFromUrl(url, name);

            // figure out if we need to add the param with a ? or a &
            var queryStart: string;
            if (currentUrl.indexOf("?") !== -1) {
                queryStart = "&";
            } else {
                queryStart = "?";
            }

            var newurl = currentUrl + queryStart + name + '=' + value;
            window.history.pushState({ path: newurl }, '', newurl);
        }
    }

    static getViewName(name?: string): string {
        let viewName = name;

        let url = window.location.pathname;
        if (url) {
            url = url.indexOf("/") === 0 ? url.substr(1, url.length) : url;
            url = url.lastIndexOf("/") === url.length - 1 ? url.substr(0, url.length - 1) : url;

            const urlParts = url.split("/");
            if (!viewName) {
                // NOTE: Should be an infoPagina
                const viewPath = urlParts.slice(Math.max(urlParts.length - 3, 1)).join("\\");
                viewName = viewPath; 
            }

            if (urlParts.length > 1) {
                const lang = urlParts[0];
                const city = urlParts[1];
                viewName = `${city} - ${viewName} [${lang}]`;
            }
        }

        if (!viewName) {
            viewName = `[Onbekend] ${window.location.href}`;
        }

        return viewName;
    }

    static toggleAriaHidden(selectorTrue: string, selectorFalse?: string): void {

        if (!selectorFalse) {
            selectorFalse = "*[aria-hidden=\"false\"]";
        }

        const ariaHiddenFalse = document.querySelectorAll(selectorFalse);
        for (let i = 0; i < ariaHiddenFalse.length; i++) {
            ariaHiddenFalse[i].setAttribute("aria-hidden", "true");
        }

        const ariaHiddenTrue = document.querySelectorAll(selectorTrue);
        for (let j = 0; j < ariaHiddenTrue.length; j++) {
            ariaHiddenTrue[j].setAttribute("aria-hidden", "false");
        }
    }

    static toggleTabIndex(selectorIn: string, selectorOut: string): void {

        const elemTabIdxOut = document.querySelectorAll(selectorOut);
        for (let i = 0; i < elemTabIdxOut.length; i++) {
            elemTabIdxOut[i].setAttribute("tabindex", "-1");
        }

        const elemTabIdxIn = document.querySelectorAll(selectorIn);
        for (let i = 0; i < elemTabIdxIn.length; i++) {
            elemTabIdxIn[i].setAttribute("tabindex", "0");
        }
    }

    static removeClassAll(selector: string, classname: string): void {

        const elements = document.querySelectorAll(selector);
        for (let i = 0; i < elements.length; i++) {
            elements[i].classList.remove(classname);
        }
    }

    static showScrollToTopButton(): void {
        const upBtn = document.querySelector(".up") as HTMLElement;
        if (upBtn) {

            const wrapper = document.querySelector(".wrapper") as HTMLElement;;
            const t = upBtn.offsetTop + (wrapper ? wrapper.offsetTop : 0);
            const h = window.innerHeight;

            if (t > h) {
                upBtn.classList.add("active");
                upBtn.setAttribute("tabindex", "0");
            } else {
                upBtn.classList.remove("active");
                upBtn.setAttribute("tabindex", "-1");
            }
        }
    }

    static scrollToTop(): void {
        window.scrollTo(0, 0);
    }

    static setRtl(val: boolean) {
        const rtlClass: string = "rtl";
        const rtl = document.body.classList.contains(rtlClass);

        if (val && !rtl)
            document.body.classList.add(rtlClass);
        else if (!val && rtl)
            document.body.classList.remove(rtlClass);
    };

    static setTextDirection = (): void => {
        const path = window.location.pathname;
        const lang = path.substr(1, 2);
        Helpers.setRtl(lang.toLowerCase() === "ar");
    }

    static share = (title: string, url: string): boolean => {

        let result = false;

        let navigatorAsAny = (navigator as any);

        // A. share native if available (on mobile device)
        if (navigatorAsAny.share) {
            navigatorAsAny.share({
                title: title,
                text: title,
                url: url,
            }).always(() => { return false; });
        }

        // or B: Copy the url to the clipboard
        // - create textarea, move it off screen
        const textarea = document.createElement('textarea');
        textarea.style.cssText = "position: absolute; left: -99999em";

        // - set to readonly to prevent mobile devices opening a keyboard when text is selected
        textarea.setAttribute("readonly", "true");

        // append to body and set value
        document.body.appendChild(textarea);
        textarea.value = url;

        // - check if there is any content selected previously
        const selected = document.getSelection().rangeCount > 0 ?
            document.getSelection().getRangeAt(0) : false;

        // - iOS Safari blocks programmatic execCommand copying normally, without this hack.
        // https://stackoverflow.com/questions/34045777/copy-to-clipboard-using-javascript-in-ios
        if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
            const editable = textarea.contentEditable;
            textarea.contentEditable = "true";
            const range = document.createRange();
            range.selectNodeContents(textarea);
            const sel = window.getSelection();
            sel.removeAllRanges();
            sel.addRange(range);
            textarea.setSelectionRange(0, 999999);
            textarea.contentEditable = editable;
        } else {
            textarea.select();
        }

        try {
            result = document.execCommand("copy");

            // - restore previous selection.
            if (selected) {
                document.getSelection().removeAllRanges();
                document.getSelection().addRange(selected);
            }
        }
        finally {
            // - cleanup the textarea
            document.body.removeChild(textarea);
            return result;
        }
    }
}
