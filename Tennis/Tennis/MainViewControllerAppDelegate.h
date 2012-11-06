//
//  MainViewControllerAppDelegate.h
//  Tennis
//
//  Created by Charles Marlon G. Ramones on 11/6/12.
//  Copyright (c) 2012 Charles Marlon G. Ramones. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TennisViewController.h"

@interface MainViewControllerAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    TennisViewController *viewController;
    
    
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain)IBOutlet TennisViewController*viewController;

@end
