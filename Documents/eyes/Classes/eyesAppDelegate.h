//
//  eyesAppDelegate.h
//  eyes
//
//  Created by ヨウスケ on 10/01/24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//


#import <UIKit/UIKit.h>
@class titleView;
@class gameView;

@interface eyesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet titleView *titleView_;
	IBOutlet gameView *gameView_;
	
}

-(IBAction)change_game:(id)sender;


@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet titleView *titleView_;
@property (nonatomic, retain) IBOutlet gameView *gameView_;

@end

