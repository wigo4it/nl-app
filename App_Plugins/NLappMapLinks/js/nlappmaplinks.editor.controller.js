angular.module('umbraco')
    .controller('NLapp.MapLinksEditor', function ($scope, angularHelper, entityResource, localizationService) {
        this.renderModel = [];

        if ($scope.preview) {
            return;
        }

        if (!Array.isArray($scope.model.value)) {
            $scope.model.value = [];

        }
        $scope.model.value.forEach(function (link) {
            this.renderModel.push(link);
        }.bind(this));

        $scope.$on('formSubmitting', function () {
            $scope.model.value = this.renderModel;
        }.bind(this));

        // Method required by the valPropertyValidator directive (returns true if the property editor has at least one tag selected)
        $scope.validateMandatory = function () {
            return {
                isValid: !$scope.model.validation.mandatory || $scope.model.value !== null && $scope.model.value.length > 0,
                errorMsg: 'Value cannot be empty',
                errorKey: 'required'
            };
        };
        
        $scope.$watch(function () {
            return this.renderModel.length;
        }.bind(this), function () {
            if ($scope.model.config && $scope.model.config.maplinksMax) {
                $scope.maplinksPickerForm.maxCount.$setValidity('maxCount', +$scope.model.config.maplinksMax >= this.renderModel.length);
            }
            this.sortableOptions.disabled = this.renderModel.length <= 1;
        }.bind(this));

        this.sortableOptions = {
            distance: 10,
            scroll: true,
            tolerance: 'pointer',
            update: function () {
                angularHelper.getCurrentForm($scope).$setDirty();
            },
            zIndex: 9999
        };

        this.remove = function ($index) {
            this.renderModel.splice($index, 1);

            angularHelper.getCurrentForm($scope).$setDirty();
        };

        this.getLinkIcon = function (link) {
            switch (link.linktype) {
                case 'Map': return 'icon-map-location';
                default: return 'icon-map';
            }
        };

        this.openMapLinkPicker = function (link, $index) {
            var target = link ? {
                name: link.name,
                id: link.id,
                udi: link.udi,
                url: link.url,
                target: link.target,
                linktype: link.linktype
            } : null;


            this.maplinkPickerOverlay = {
                view: '../../../../App_Plugins/NLappMapLinks/NLappMapLinksPicker',
                currentTarget: target,
                show: true,
                submit: function (model) {
                    if (model.target.url) {
                        if (link) {
                            link.id = model.target.id;
                            link.udi = model.target.udi;
                            link.isMedia = false;
                            link.name = model.target.name || model.target.url;
                            link.url = model.target.url;
                            link.target = model.target.target || "_blank";
                            link.linktype = model.target.linktype;
                        } else {
                            link = {
                                id: model.target.id,
                                isMedia: false,
                                name: model.target.name || model.target.url,
                                udi: model.target.udi,
                                url: model.target.url,
                                target: model.target.target || "_blank",
                                linktype: model.target.linktype
                            };
                            this.renderModel.push(link);
                        }

                        link.published = true;
                        link.icon = this.getLinkIcon(link);

                        angularHelper.getCurrentForm($scope).$setDirty();
                    }

                    this.maplinkPickerOverlay.show = false;
                    this.maplinkPickerOverlay = null;
                }.bind(this)
            };
        };

    });