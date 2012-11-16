//
//  JSViewController.m
//  SingletonExample
//
//  Created by Johnny on 11/15/12.
//  Copyright (c) 2012 Johnny Slagle. All rights reserved.
//

#import "JSViewController.h"

// NOTE: Import this in any file you want access to the singleton object.  Another option (if you want the whole project to be able to access it) you could add this import line into your project's -Prefix.pch file in the Supporting Files folder.
#import "JSSingletonObject.h"

@implementation JSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // Note: To use the singleton object use this: [JSSingletonObject sharedInstance] and then use as you would any other object or method call.  You can do whatever you want with it and it's contents (a method, object, or 'starting' method).
    
    // E.g. We will now print the contents of the "someArray".
    NSLog(@"JSSingletonObject someArray: %@",[[JSSingletonObject sharedInstance] someArray]);
    
    // OR, if we wanted to call a method we would do this
    [[JSSingletonObject sharedInstance] someMethod];
    
    // If you want, or will be using the instance pointer a lot, you can create a singleton object like you would with antyhing else.
    JSSingletonObject *singletonObject = [JSSingletonObject sharedInstance];
    
    // Then you can do the same thing as above but with this object
    NSLog(@"singletonObject someArray: %@",[singletonObject someArray]);
    [singletonObject someMethod];
    
    // That is the basics for Singleton creation.  Good luck!
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
