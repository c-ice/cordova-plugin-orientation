//
//  ScreenOrientation.h
//  Oskar
//
//  Created by instalater on 21/05/14.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface ScreenOrientation : CDVPlugin

- (void)changeOrientation:(CDVInvokedUrlCommand*)command;

@end