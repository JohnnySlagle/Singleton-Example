//
//  JSAppDelegate.h
//  SingletonExample
//
//  Created by Johnny on 11/15/12.
//  Copyright (c) 2012 Johnny Slagle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSViewController;

@interface JSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JSViewController *viewController;

@end
