var argscheck = require('cordova/argscheck'),
utils = require('cordova/utils'),
exec = require('cordova/exec');


var ScreenOrientation = function(){


};


function success() {
	console.log("succesfully changed orientation.");
	ScreenOrientation.isChangingOrientation = false;
}

function failed() {
	console.log("failed changed orientation.");
}

ScreenOrientation.changeScreenOrientationTo = function(orientation) {

	ScreenOrientation.isChangingOrientation = true;	

	exec( 	success,
			failed,
		   	"ScreenOrientation",
		   	"changeOrientation",
		   	[orientation]);
};




ScreenOrientation.isChangingOrientation = false;

module.exports = ScreenOrientation;

