angular.module('umbraco')
    .factory("nlAppContent", ['$http', 'contentResource', function ($http, contentResource) {
        return {
            getNodeById: function (id) {
                return contentResource.getById(id);
            }
        };
    }]);
