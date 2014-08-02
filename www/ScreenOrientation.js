var ScreenOrientation = {
	//alert(orientation);
	callScreenOrientationNative: function(success,fail,orientation) {
	   return Cordova.exec( success, fail,
						   "ScreenOrientation",
						   "screenorientationFunction",
						   [orientation]);
	}
};