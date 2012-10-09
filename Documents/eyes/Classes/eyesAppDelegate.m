//
//  eyesAppDelegate.m
//  eyes
//
//  Created by ヨウスケ on 10/01/24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "eyesAppDelegate.h"
#include "titleView.h"
#include "gameView.h"


@implementation eyesAppDelegate

@synthesize window;
@synthesize titleView_;
@synthesize gameView_;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch

    [window addSubview:titleView_];
	[window makeKeyAndVisible];
}

-(IBAction)change_game:(id)sender{
	[titleView_ removeFromSuperview];
	[window addSubview:gameView_];
	[gameView_ startgame];
	
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
