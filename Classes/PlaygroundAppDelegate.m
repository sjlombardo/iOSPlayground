//
//  PlaygroundAppDelegate.m
//  Playground
//
//  Created by Stephen Lombardo on 1/23/09.
//  Copyright Identicentric 2009. All rights reserved.
//

#import "PlaygroundAppDelegate.h"
#import "PlaygroundViewController.h"

@implementation PlaygroundAppDelegate

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
