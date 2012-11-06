//
//  TennisViewController.m
//  Tennis
//
//  Created by Charles Marlon G. Ramones on 11/6/12.
//  Copyright (c) 2012 Charles Marlon G. Ramones. All rights reserved.
//

#import "TennisViewController.h"
#define kGameStateRunning 1
#define kGameStatePaused 2
#define kBallSpeedX 10
#define kBallSppedY 15



@interface TennisViewController ()

@end

@implementation TennisViewController
@synthesize  ball, raquet_green, raquet_yellow, enemy_score, player_score, gameState, ballVelocity, tapToBegin;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.gameState = kGameStatePaused;
    ballVelocity = CGPointMake(kBallSpeedX, kBallSppedY);
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(lala) userInfo:nil repeats:YES];
    
}
-(void)lala
{
    ball.center = CGPointMake(ball.center.x+ballVelocity.x,ball.center.y+ballVelocity.y);
    if(ball.center.x >self.view.bounds.size.width||ball.center.x <0)
    {
        ballVelocity.x = -ballVelocity.x;
        
        
        
    }
    if(ball.center.y>self.view.bounds.size.height||ball.center.y <0)
    {
        ballVelocity.y = -ballVelocity.y;
        
        
    }
    else{
        if(tapToBegin.hidden){
            tapToBegin.hidden= NO;
            
        }
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
