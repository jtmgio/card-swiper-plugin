var exec = require('cordova/exec');

va
module.exports.test = function (arg0, success, error) {
    exec(success, error, "CardSwiper", "test", [arg0]);
}