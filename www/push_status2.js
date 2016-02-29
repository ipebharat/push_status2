/*global cordova, module*/

module.exports = {
    isPushNotificationsAvailable: function (successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "PushStatus", "isPushNotificationsAvailable");
    }
};
