angular.module('umbraco')
    .controller('NLapp.ExternalLinksEditor', function ($scope, angularHelper, entityResource, localizationService) {
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
            if ($scope.model.config && $scope.model.config.extlinksMax) {
                $scope.extlinksPickerForm.maxCount.$setValidity('maxCount', +$scope.model.config.extlinksMax >= this.renderModel.length);
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
                case 'Website': return 'icon-link';
                case 'Pdf': return 'icon-article';
                case 'Video': return 'icon-movie';
                default: return 'icon-link';
            }
        };

        this.openExtLinkPicker = function (link, $index) {
            var target = link ? {
                name: link.name,
                id: link.id,
                udi: link.udi,
                url: link.url,
                target: link.target,
                linktype: link.linktype
            } : null;


            this.extlinkPickerOverlay = {
                view: '../../../../App_Plugins/NLappExternalLinks/NLappExternalLinksPicker',
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

                    this.extlinkPickerOverlay.show = false;
                    this.extlinkPickerOverlay = null;
                }.bind(this)
            };
        };

    });