//
//  SCScreenOrientation.h
//  Max
//
//  Created by cice on 21/05/14.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface SCScreenOrientation : CDVPlugin

- (void)changeOrientation:(CDVInvokedUrlCommand*)command;

@end