//
//  msp2usdAppDelegate.h
//  msp2usd
//
//  Created by Ash Lux on 5/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class msp2usdViewController;

@interface msp2usdAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    msp2usdViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet msp2usdViewController *viewController;

@end

