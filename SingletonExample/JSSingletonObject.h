//
//  JSSingletonObject.h
//  SingletonExample
//
//  Created by Johnny on 11/15/12.
//  Copyright (c) 2012 Johnny Slagle. All rights reserved.
//

#import <Foundation/Foundation.h>

// NOTE: A singleton is a Subclass of NSObject that maintains ONE object or pointer to a SINGLE instance of the class.
@interface JSSingletonObject : NSObject


//  An Example object
@property (nonatomic, strong) NSArray *someArray;


#pragma mark - Class Methods

// NOTE: Use this method to get the current (and only) instance of the singleton object.  E.g. [JSSingletonObject sharedInstance]
//  Gets the shared instance
+ (id)sharedInstance;


#pragma mark - Instance Methods

// Some example method
- (void)someMethod;

@end
