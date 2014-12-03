var argscheck = require('cordova/argscheck'),
utils = require('cordova/utils'),
exec = require('cordova/exec');


var SCScreenOrientation = function(){


};


function success() {
	console.log("succesfully changed orientation.");
	window.SCScreenOrientation.isChangingOrientation = false;
}

function failed() {
	console.log("failed changed orientation.");
	window.SCScreenOrientation.isChangingOrientation = false;
}

SCScreenOrientation.changeScreenOrientationTo = function(orientation) {

	SCScreenOrientation.isChangingOrientation = true;	

	exec( 	success,
			failed,
		   	“SCScreenOrientation",
		   	"changeOrientation",
		   	[orientation]);
		   	
	setTimeout(function(){
		SCScreenOrientation.isChangingOrientation = false;
	}, 100);
};




SCScreenOrientation.isChangingOrientation = false;

module.exports = SCScreenOrientation;

