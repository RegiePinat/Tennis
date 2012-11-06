//
//  TennisViewController.h
//  Tennis
//
//  Created by Charles Marlon G. Ramones on 11/6/12.
//  Copyright (c) 2012 Charles Marlon G. Ramones. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TennisViewController : UIViewController
{
    IBOutlet UIImageView *ball;
    IBOutlet UIImageView *raquet_yellow;
    IBOutlet UIImageView *raquet_green;
    IBOutlet UILabel *tapToBegin;
    
    IBOutlet UILabel *player_score;
    IBOutlet UILabel *enemy_score;
    
    NSInteger gameState;

    
}
@property(nonatomic, retain)IBOutlet UIImageView *ball;
@property(nonatomic, retain)IBOutlet UIImageView *raquet_yellow;
@property(nonatomic, retain)IBOutlet UIImageView *raquet_green;
@property(nonatomic, retain)IBOutlet UILabel *tapToBegin;

@property(nonatomic, retain)IBOutlet UILabel *player_score;
@property(nonatomic, retain)IBOutlet UILabel *enemy_score;
@property (nonatomic)CGPoint ballVelocity;
@property (nonatomic)NSInteger gameState;


@end
