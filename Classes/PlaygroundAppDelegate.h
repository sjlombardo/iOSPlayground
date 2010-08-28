//
//  PlaygroundAppDelegate.h
//  Playground
//
//  Created by Stephen Lombardo on 1/23/09.
//  Copyright Identicentric 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlaygroundViewController;

@interface PlaygroundAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PlaygroundViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PlaygroundViewController *viewController;

@end

