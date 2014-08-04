#import "ScreenOrientation.h"

@implementation ScreenOrientation

- (void) changeOrientation:(CDVInvokedUrlCommand*)command {

    
    NSString *orientation = [command.arguments objectAtIndex:0];
    
    if ( [orientation isEqualToString:@"LandscapeLeft"] ) {
        NSLog(@"Landscape Left");
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationLandscapeLeft );
        }
    }
    else if ( [orientation isEqualToString:@"LandscapeRight"] ) {
        NSLog(@"Landscape Right");
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationLandscapeRight );
        }
    }
    else if ( [orientation isEqualToString:@"Portrait"] ) {
        NSLog(@"Portrait");
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationPortrait );
        }
    }
    else if ( [orientation isEqualToString:@"PortraitUpsideDown"] ) {
        NSLog(@"Portrait upSide Down Left");
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationPortraitUpsideDown );
        }
    }
}

@end