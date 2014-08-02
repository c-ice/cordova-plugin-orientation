#import "ScreenOrientation.h"

@implementation ScreenOrientation

- (void) changeOrientation:(CDVInvokedUrlCommand*)command {

    
    NSString *orientation = [command.arguments objectAtIndex:0];
    
    if ( [orientation isEqualToString:@"LandscapeLeft"] ) {
        NSLog(@"Landscape Left");
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationLandscapeLeft];
    }
    else if ( [orientation isEqualToString:@"LandscapeRight"] ) {
        NSLog(@"Landscape Right");
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationLandscapeRight];
    }
    else if ( [orientation isEqualToString:@"Portrait"] ) {
        NSLog(@"Portrait");
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortrait];
    }
    else if ( [orientation isEqualToString:@"PortraitUpsideDown"] ) {
        NSLog(@"Portrait upSide Down Left");
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortraitUpsideDown];
    }
}

@end