var argscheck = require('cordova/argscheck'),
utils = require('cordova/utils'),
exec = require('cordova/exec');


var ScreenOrientation = function(){


};


function success() {
	console.log("succesfully changed orientation.");
	window.ScreenOrientation.isChangingOrientation = false;
}

function failed() {
	console.log("failed changed orientation.");
	window.ScreenOrientation.isChangingOrientation = false;
}

ScreenOrientation.changeScreenOrientationTo = function(orientation) {

	ScreenOrientation.isChangingOrientation = true;	

	exec( 	success,
			failed,
		   	"ScreenOrientation",
		   	"changeOrientation",
		   	[orientation]);
		   	
	setTimeout(function(){
		ScreenOrientation.isChangingOrientation = false;
	}, 100);
};




ScreenOrientation.isChangingOrientation = false;

module.exports = ScreenOrientation;

