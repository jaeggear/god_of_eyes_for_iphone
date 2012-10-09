//
//  gameView.h
//  eyes
//
//  Created by ヨウスケ on 10/01/24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface gameView : UIView {
	IBOutlet UIButton *green;
	IBOutlet UILabel *score;
	IBOutlet UILabel *timer;
	NSMutableArray *rank;
	int count;
	int timer_cnt;
	NSUInteger text_num;
	gameView *gameView_;
	IBOutlet UILabel *result_label;
	IBOutlet UILabel *result_label_rank;
	IBOutlet UIButton *back;
	NSTimer *eyes_timer;
	NSTimer *cnt_timer;
	SystemSoundID soundID;
}
-(IBAction)add;
-(IBAction)touchSE;
-(void)move;
-(void)startgame;
-(void)countdown;
-(void)result;
-(IBAction)restart:(id)sender;
-(void)hide;
@end
