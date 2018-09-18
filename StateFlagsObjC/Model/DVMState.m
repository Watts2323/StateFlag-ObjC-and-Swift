//
//  DVMState.m
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "DVMState.h"

@implementation DVMState

// All obc initializers are Failable
- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation;
{
    // most of the time use the _underlying value in a initializers
    self = [super init];
    if (self) {
        _name = name;
        _abbreviation = abbreviation;
    }
    return self;
}

@end
