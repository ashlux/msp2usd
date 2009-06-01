//
//  msp2usdAppDelegate.m
//  msp2usd
//
//  Created by Ash Lux on 5/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "msp2usdAppDelegate.h"
#import "msp2usdViewController.h"

@implementation msp2usdAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
