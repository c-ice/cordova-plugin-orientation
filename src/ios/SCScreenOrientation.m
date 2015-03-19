#import "SCScreenOrientation.h"

@implementation SCScreenOrientation

- (void) changeOrientation:(CDVInvokedUrlCommand*)command {
    
    
    NSString *orientation = [command.arguments objectAtIndex:0];
    
    if ( [orientation isEqualToString:@"LandscapeLeft"] ) {
        NSLog(@"Landscape Left");
        
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationLandscapeLeft] forKey:@"orientation"];
        
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationLandscapeLeft];
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationLandscapeLeft );
        }
    }
    else if ( [orientation isEqualToString:@"LandscapeRight"] ) {
        NSLog(@"Landscape Right");
        
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationLandscapeRight] forKey:@"orientation"];
        
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationLandscapeRight];
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationLandscapeRight );
        }
    }
    else if ( [orientation isEqualToString:@"Portrait"] ) {
        NSLog(@"Portrait");
        
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
        
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortrait];
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationPortrait );
        }
    }
    else if ( [orientation isEqualToString:@"PortraitUpsideDown"] ) {
        NSLog(@"Portrait upSide Down Left");
        
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortraitUpsideDown] forKey:@"orientation"];
        
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortraitUpsideDown];
        
        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
            objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),    UIInterfaceOrientationPortraitUpsideDown );
        }
    }
}

@end
