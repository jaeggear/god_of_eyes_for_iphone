//
//  gameView.m
//  eyes
//
//  Created by ヨウスケ on 10/01/24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "eyesAppDelegate.h"
#import "gameView.h"
#define playtime 30//ゲーム時間
#define eyesSpeed 1.0 //eyesの速さ
#define maxPoint 1500 //最高得点
@implementation gameView


-(void)startgame{
	//初期化
	result_label.hidden=YES;
	result_label_rank.hidden=YES;
	back.hidden=YES;
	green.hidden=YES;
	count=0;//獲得ポイント
	score.text=[NSString stringWithFormat:@"%d",count];
	timer_cnt=playtime;
	timer.text=[NSString stringWithFormat:@"%d",timer_cnt];
	srand(time(NULL));
	
	//効果音のファイル読み込み
	NSString *path=[[NSBundle mainBundle] pathForResource:@"touchSE" ofType:@"caf"];
	NSURL *url=[NSURL fileURLWithPath:path];
	AudioServicesCreateSystemSoundID((CFURLRef)url,&soundID);
	
	eyes_timer=[NSTimer scheduledTimerWithTimeInterval:eyesSpeed target:self selector:@selector(move) userInfo:nil repeats:YES];//eyes移動用
	cnt_timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countdown) userInfo:nil repeats:YES];//タイマー表示用
	
}

-(void)move{
		if(timer_cnt>0){
			green.hidden=NO;
			//一定の範囲内をランダムに移動する。
			int x=40+rand()%240;
			int y=80+rand()%360;
			green.center=CGPointMake(x,y);
			[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(hide) userInfo:nil repeats:NO];//eyes点滅用
		}else{
			green.hidden=YES;
			[self result];
		}
	
}

-(void)countdown{
	if(timer_cnt>0){
		timer_cnt=timer_cnt-1;
		timer.text=[NSString stringWithFormat:@"%d",timer_cnt];
	}
}
-(void)result{
		
	//スコア代入
	result_label.text=[NSString stringWithFormat:@"%d POINTS",count];
	
	//ランク代入
	if(count>=0&&count<500){
		text_num=0;
	}
	if(count>=500&&count<1000){
		text_num=1;
	}
	if(count>=1000&&count<maxPoint){
		text_num=2;		
	}
	if(count>=maxPoint){		
		text_num=3;
	}

	
	//結果のランクを表示する配列を作成
	rank=[[NSMutableArray alloc]init];
	[rank addObject:@"RANK:・・・"];
	[rank addObject:@"RANK:☆・・"];
	[rank addObject:@"RANK:☆☆・"];
	[rank addObject:@"RANK:☆☆☆"];
	
	result_label_rank.text=[rank objectAtIndex:text_num];
	
	result_label.hidden=NO;
	result_label_rank.hidden=NO;
	back.hidden=NO;
	//タイマーストップ
	[eyes_timer invalidate];
	[cnt_timer invalidate];

}

//eyesが押されるごとに50POINTS追加。
-(IBAction)add{
	count=count+50;
	score.text=[NSString stringWithFormat:@"%d",count];
}

-(IBAction)touchSE{
	AudioServicesPlaySystemSound(soundID);
	
}

-(void)hide{
	green.hidden=YES;		
}

-(IBAction)restart:(id)sender{	
	[self startgame];	
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


@end
