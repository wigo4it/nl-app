"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Helpers = /** @class */ (function () {
    function Helpers() {
    }
    Helpers.getHtmlElement = function (selector) {
        var elem;
        if (selector[0] === ".") {
            elem = document.getElementsByClassName(selector)[0];
        }
        else {
            var elemId = selector[0] === "#" ? selector.substr(1) : selector;
            elem = document.getElementById(elemId);
        }
        return elem;
    };
    Helpers.toDomainName = function (name) {
        var urlComp = name.replace(" ", "-");
        return urlComp;
    };
    Helpers.getQueryStringParamByName = function (name) {
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)");
        var url = window.location.href;
        var results = regex.exec(url);
        if (!results)
            return null;
        if (!results[2])
            return "";
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    };
    Helpers.removeQueryParamFromUrl = function (url, name) {
        var urlparts = url.split("?");
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
        }
        else {
            return url;
        }
    };
    Helpers.addQueryParamToUrl = function (url, name, value) {
        if (history.pushState) {
            // remove any param for the same key
            var currentUrl = Helpers.removeQueryParamFromUrl(url, name);
            // figure out if we need to add the param with a ? or a &
            var queryStart;
            if (currentUrl.indexOf("?") !== -1) {
                queryStart = "&";
            }
            else {
                queryStart = "?";
            }
            var newurl = currentUrl + queryStart + name + '=' + value;
            window.history.pushState({ path: newurl }, '', newurl);
        }
    };
    Helpers.getViewName = function (name) {
        var viewName = name;
        var url = window.location.pathname;
        if (url) {
            url = url.indexOf("/") === 0 ? url.substr(1, url.length) : url;
            url = url.lastIndexOf("/") === url.length - 1 ? url.substr(0, url.length - 1) : url;
            var urlParts = url.split("/");
            if (!viewName) {
                // NOTE: Should be an infoPagina
                var viewPath = urlParts.slice(Math.max(urlParts.length - 3, 1)).join("\\");
                viewName = viewPath;
            }
            if (urlParts.length > 1) {
                var lang = urlParts[0];
                var city = urlParts[1];
                viewName = city + " - " + viewName + " [" + lang + "]";
            }
        }
        if (!viewName) {
            viewName = "[Onbekend] " + window.location.href;
        }
        return viewName;
    };
    Helpers.toggleAriaHidden = function (selectorTrue, selectorFalse) {
        if (!selectorFalse) {
            selectorFalse = "*[aria-hidden=\"false\"]";
        }
        var ariaHiddenFalse = document.querySelectorAll(selectorFalse);
        for (var i = 0; i < ariaHiddenFalse.length; i++) {
            ariaHiddenFalse[i].setAttribute("aria-hidden", "true");
        }
        var ariaHiddenTrue = document.querySelectorAll(selectorTrue);
        for (var j = 0; j < ariaHiddenTrue.length; j++) {
            ariaHiddenTrue[j].setAttribute("aria-hidden", "false");
        }
    };
    Helpers.toggleTabIndex = function (selectorIn, selectorOut) {
        var elemTabIdxOut = document.querySelectorAll(selectorOut);
        for (var i = 0; i < elemTabIdxOut.length; i++) {
            elemTabIdxOut[i].setAttribute("tabindex", "-1");
        }
        var elemTabIdxIn = document.querySelectorAll(selectorIn);
        for (var i = 0; i < elemTabIdxIn.length; i++) {
            elemTabIdxIn[i].setAttribute("tabindex", "0");
        }
    };
    Helpers.removeClassAll = function (selector, classname) {
        var elements = document.querySelectorAll(selector);
        for (var i = 0; i < elements.length; i++) {
            elements[i].classList.remove(classname);
        }
    };
    Helpers.showScrollToTopButton = function () {
        var upBtn = document.querySelector(".up");
        if (upBtn) {
            var wrapper = document.querySelector(".wrapper");
            ;
            var t = upBtn.offsetTop + (wrapper ? wrapper.offsetTop : 0);
            var h = window.innerHeight;
            if (t > h) {
                upBtn.classList.add("active");
                upBtn.setAttribute("tabindex", "0");
            }
            else {
                upBtn.classList.remove("active");
                upBtn.setAttribute("tabindex", "-1");
            }
        }
    };
    Helpers.scrollToTop = function () {
        window.scrollTo(0, 0);
    };
    Helpers.setRtl = function (val) {
        var rtlClass = "rtl";
        var rtl = document.body.classList.contains(rtlClass);
        if (val && !rtl)
            document.body.classList.add(rtlClass);
        else if (!val && rtl)
            document.body.classList.remove(rtlClass);
    };
    ;
    Helpers.setTextDirection = function () {
        var path = window.location.pathname;
        var lang = path.substr(1, 2);
        Helpers.setRtl(lang.toLowerCase() === "ar");
    };
    Helpers.share = function (title, url) {
        var result = false;
        var navigatorAsAny = navigator;
        // A. share native if available (on mobile device)
        if (navigatorAsAny.share) {
            navigatorAsAny.share({
                title: title,
                text: title,
                url: url,
            }).always(function () { return false; });
        }
        // or B: Copy the url to the clipboard
        // - create textarea, move it off screen
        var textarea = document.createElement('textarea');
        textarea.style.cssText = "position: absolute; left: -99999em";
        // - set to readonly to prevent mobile devices opening a keyboard when text is selected
        textarea.setAttribute("readonly", "true");
        // append to body and set value
        document.body.appendChild(textarea);
        textarea.value = url;
        // - check if there is any content selected previously
        var selected = document.getSelection().rangeCount > 0 ?
            document.getSelection().getRangeAt(0) : false;
        // - iOS Safari blocks programmatic execCommand copying normally, without this hack.
        // https://stackoverflow.com/questions/34045777/copy-to-clipboard-using-javascript-in-ios
        if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
            var editable = textarea.contentEditable;
            textarea.contentEditable = "true";
            var range = document.createRange();
            range.selectNodeContents(textarea);
            var sel = window.getSelection();
            sel.removeAllRanges();
            sel.addRange(range);
            textarea.setSelectionRange(0, 999999);
            textarea.contentEditable = editable;
        }
        else {
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
    };
    return Helpers;
}());
exports.Helpers = Helpers;
//# sourceMappingURL=nlapp-helpers.js.map