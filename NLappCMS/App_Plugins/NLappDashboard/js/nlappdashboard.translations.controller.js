angular.module('umbraco')
    .controller('TranslationsController', ['$scope', '$http', 'treeService', 'contentResource', 'nlAppContent',

        function ($scope, $http, treeService, contentResource, nlAppContent) {

            $scope.errors = "Opstarten NLapp-Dashboard mislukt";
            $scope.activated = false;

            $scope.init = function () {
                $scope.errors = "";
                $scope.languages = getSiteLanguages();
            };

            $scope.activate = function() {
                $scope.activated = true;
                $scope.loadMissingTranslations();
            };

            $scope.missingTranslations = { nodes: [] };

            $scope.loadMissingTranslations = function () {
                treeService.getTree({ section: "content" }).
                    then(function (data) {
                        var root = data.root.children[0];
                        var node = { page: root, childs: [] };

                        node = getAllChildren(node);
                        $scope.missingTranslations.nodes = [node];

                    }, function (response, status) {
                        var errormsg = "The request treeService.getTree() failed with response '" + response.data.error_description + " (" + response.data.error + ")' and status code " + status;
                        $scope.errors = errormsg;
                        console.error(errormsg);
                    });
            };

            getAllChildren = function (node) {
                if (node.page) {
                    setTranslationState(node);

                    if (node.page.hasChildren) {

                        node.childs = [];

                        treeService.getChildren({ node: node.page, section: "content" }).then(
                            function (data) {

                                // navigate children
                                for (var i = 0; i < data.length; i++) {
                                    var child = data[i];

                                    var childnode = { page: child, childs: [] };
                                    node.childs.push(childnode);

                                    getAllChildren(childnode);
                                }
                            },
                            function (response, status) {
                                var errormsg = "The request treeService.getChildren() failed with response '" + response.data.error_description + " (" + response.data.error + ")' and status code " + status;
                                $scope.errors = errormsg;
                                console.error(errormsg);
                            }
                        );
                    }

                }
                return node;
            };

            getSiteLanguages = function () {
                // TODO: Languages should load dynamically from Settings
                return [{ name: "Nederlands", culture: "nl-NL" }, { name: "Engels", culture: "en-US" }, { name: "Arabisch", culture: "ar-SY" }, { name: "Tigrinya", culture: "ti-ER" }];
            };

            setTranslationState = function (node) {
                nlAppContent.getNodeById(node.page.id).then(function(page) {

                    var states = [];

                    if (page && page.properties) {

                        for (var p = 0; p < page.properties.length; p++) {

                            var propObj = page.properties[p];
                            var prop = propObj.label;

                            if (typeof propObj.value === 'object') {
                                propObj = propObj.value;
                            }

                            if (isVortoProperty(propObj)) {

                                var isNestedProperty = isNestedVortoProperty(propObj);

                                var ts;
                                if (isNestedProperty) {
                                    states = getNestedPropertyTranslationStates(propObj, prop, states);
                                }
                                else {
                                    states = getVortoPropertyTranslationState(prop, propObj, states);
                                }
                            } else {
                                if (!isDefaultPropertyName(prop)) {
                                    states = getNormalPropertyState(prop, propObj, states);
                                }
                            }
                        }
                    }

                    node.translationState = states;
                });
            };

            getNestedPropertyTranslationStates = function (propObj, nestedProp, states) {

                var langStates = [];
                var propNames = getNestedPropertyNames(propObj);

                if (propNames.length > 0) {

                    for (var i = 0; i < propNames.length; i++) {
                        var propName = propNames[i];

                        if (isDefaultNestedPropertyName(propName)) {
                            continue;
                        }

                        langStates = [];

                        for (var j = 0; j < $scope.languages.length; j++) {
                            var lang = $scope.languages[j];

                            var valArr = propObj.values[lang.culture];
                            if (valArr && valArr.length > 0) {
                                var val = propObj.values[lang.culture][0];
                                var ls = getNestedPropertyLanguageState(val, lang, propName);
                                langStates.push(ls);
                            }
                        }

                        var ts = translationState(propName, langStates, nestedProp);
                        states.push(ts);
                    }
                }
                else {

                    langStates = [];

                    for (var k = 0; k < $scope.languages.length; k++) {
                        var language = $scope.languages[k];
                        var val1 = propObj.values[language.culture];

                        var ls1;
                        if (val1 && Array.isArray(val1)) {
                            ls1 = languageState(language.name, val1.length > 0);
                        } else {
                            ls1 = languageState(language.name, false);
                        }

                        langStates.push(ls1);
                    }

                    var ts1 = translationState(nestedProp, langStates);
                    states.push(ts1);
                }

                return states;
            };

            getVortoPropertyTranslationState = function (prop, propObj, states) {
                var ts = getPropertyTranslationState(prop, propObj);
                states.push(ts);
                return states;
            };

            getNormalPropertyState = function (prop, propObj, states) {
                var langStates = [];

                var isFilled = (propObj.hasOwnProperty("values") && (Array.isArray(propObj.values) && propObj.values.length > 0)) || !!propObj.value;
                var langState = isFilled ? true : undefined;
                var ls = languageState($scope.languages[0].name, langState);

                langStates.push(ls);

                var ts = translationState(prop, langStates);

                states.push(ts);
                return states;
            };

            getPropertyTranslationState = function (prop, propObj, nestedProp) {
                var langStates = [];
                for (var i = 0; i < $scope.languages.length; i++) {
                    var ls = getPropertyLanguageState(propObj, $scope.languages[i]);
                    langStates.push(ls);
                }

                return translationState(prop, langStates, nestedProp);
            };

            getPropertyLanguageState = function (propObj, lang) {
                var propVal = propObj ? propObj.values[lang.culture] : null;
                var langState = new Boolean(propVal && propVal.length > 0);
                return languageState(lang.name, langState);
            };

            getNestedPropertyLanguageState = function (propObj, lang, propName) {
                var propVal = propObj ? propObj[propName] : null;
                var langState = new Boolean(propVal && propVal.length > 0);
                return languageState(lang.name, langState);
            };
            
            getUserfriendlyPropertyName = function (propName) {
                var defaultPropNames = {
                    keywords: "Meta Keywords",
                    description: "Meta Description",
                    onderwerpnaam: "Onderwerpnaam",
                    categorienaam: "Categorienaam"
                };

                var ufName = defaultPropNames[propName.toLowerCase()] || propName;
                ufName = ufName[0].toUpperCase() + ufName.substring(1);
                return ufName;
            };

            isDefaultNestedPropertyName = function (propName) {
                var defaultNestedPropNames = ["key", "name", "ncContentTypeAlias"];
                return defaultNestedPropNames.indexOf(propName) > -1;
            };

            isDefaultPropertyName = function (propName) {
                var defaultPropNames = ["Hide in Navigation"];
                return defaultPropNames.indexOf(propName) > -1;
            };

            isVortoProperty = function (propObj) {
                return propObj && propObj.values;
            };

            isNestedVortoProperty = function (propObj) {

                for (var i = 0; i < $scope.languages.length; i++) {
                    var lang = $scope.languages[i];

                    var propVal = propObj.values[lang.culture];
                    if (Array.isArray(propVal)) {
                        return true;
                    }
                }

                return false;
            };

            getNestedProperty = function (propObj) {

                var nestedPropObj = propObj;

                for (var i = 0; i < $scope.languages.length; i++) {
                    var lang = $scope.languages[i];
                    nestedPropObj.values[lang.culture] = (propObj.values[lang.culture]);
                }

                return nestedPropObj;
            };

            getNestedPropertyNames = function (nestedPropObj) {

                var propNames = [];

                for (var i = 0; i < $scope.languages.length; i++) {
                    var lang = $scope.languages[i];

                    var propArr = nestedPropObj.values[lang.culture];
                    if (propArr && propArr.length > 0) {
                        var propVal = propArr[0];

                        if (typeof propVal === "object") {
                            for (var prop in propVal) {
                                if (propNames.indexOf(prop) === -1) {
                                    propNames.push(prop);
                                }
                            }
                        }
                    }
                }

                return propNames;
            };

            translationState = function (propName, languageStates, nestedPropName) {
                propName = getUserfriendlyPropertyName(propName);

                if (nestedPropName)
                    return { propName: propName, status: languageStates, nestedPropName: nestedPropName };
                else
                    return { propName: propName, status: languageStates };
            };

            languageState = function (language, isTranslated) {
                return { language: language, isTranslated: isTranslated };
            };

            $scope.init();
        }
    ]);
