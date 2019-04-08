// Authentication token url
var authUrl = 'https://localhost:44396/umbraco/oauth/token'; // TODO: Remove host from JS-file
var apiBase = 'http://localhost:44396/umbraco/rest/v1/'; // TODO: Remove host from JS-file

// Authentication service
angular.module('umbraco')
    .factory('nlAppAuth', function ($http) {

        var getAccessToken = function (grantType, username, password) {

            var postData = {
                grant_type: grantType,
                username: username,
                password: password
            };

            return $http.post(authUrl, postData, {
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                transformRequest: function (obj) {
                    var str = [];
                    for (var p in obj)
                        if (obj.hasOwnProperty(p)) str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                    return str.join("&");
                }
            }).then(function (response) {
                return response.data;
            });

        };

    return {
        getAccessToken: getAccessToken
    }
});