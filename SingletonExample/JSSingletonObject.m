//
//  JSSingletonObject.h
//  SingletonExample
//
//  Created by Johnny on 11/15/12.
//  Copyright (c) 2012 Johnny Slagle. All rights reserved.
//


#import "JSSingletonObject.h"

/*
 *  WhereAmI
 *
 *  This is a method I created to quickly and easily print which function and the line it was called on.
 *  Output looks like this: -[ViewController viewDidUnload] [Line 67]
 *
 */
#define WhereAmI NSLog((@"%s [Line %d] "), __PRETTY_FUNCTION__, __LINE__);


// NOTE: This is the singleton object that the class maintains to point and hand to everyone who wants an instance of this class.  It is 'static' meaning that only one can exist throughout all versions of this class (which this forces to be only one).
static JSSingletonObject * sharedInstance = nil;


@implementation JSSingletonObject

#pragma mark - Singleton & Class Methods
//NOTE: This is the method you use to grab the instance of this object.
+ (id)sharedInstance {
    // IMPORTANT NOTE:  @synchronized() is used to assist in creating a singleton class thread-safe.  Not every singleton uses or needs this but it doesn't hurt to keep a thread-safe mindset when possible.  @synchronized(){}  declares a "critical section" around the following code block.  Meaning, when potentially accessing it with multiple threads, it forces and assures that only one thread can be executing the block at any given time.
    @synchronized(self) {
        if (sharedInstance == nil) {
            // Create as you normaly would any other object
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

#pragma mark - Instance Methods
- (void)someMethod {
    // Do stuff
    WhereAmI;
    
}

#pragma mark - Lazy Instantiations
- (NSArray *)someArray {
    if(_someArray == nil) {
        _someArray = @[@"Some Object"];
    }
    return _someArray;
}

@end
