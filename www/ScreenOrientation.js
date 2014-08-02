
               
var argscheck = require('cordova/argscheck'),
	utils = require('cordova/utils'),
     	exec = require('cordova/exec');
               
               
               
        var ScreenOrientation = function(){
        };
               
               
ScreenOrientation.changeScreenOrientationTo = function(orientation) {
                exec( function(){console.log("succesfully changed orientation.")},
                    function(){console.log("failed changed orientation.")},
						   "ScreenOrientation",
						   "screenorientationFunction",
						   [orientation]);
               };

               
               module.exports = ScreenOrientation;

