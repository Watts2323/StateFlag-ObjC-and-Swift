//
//  DVMStateController.m
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "DVMStateController.h"
#import "DVMState.h"
#import "DVMStateHelper.h"

@implementation DVMStateController

+ (DVMStateController *)sharedController {
    static DVMStateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[DVMStateController alloc] init];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _states = [self addStates];
    }
    return self;
}

- (NSArray *)addStates;
{
    // We can add things to this array, Not as NSArray
    NSMutableArray *newStates = [[NSMutableArray alloc] init];
    
    for (NSString * fullStateNames in [DVMStateHelper states])
    {
        //Get the abbreviation
        
        NSInteger index = [[DVMStateHelper states]indexOfObject:fullStateNames];
        
        //Get the abbreviation
        NSString *abbreviation = [DVMStateHelper abbreviation][index];
        
        // this is our instance in objC
        DVMState *state = [[DVMState alloc]initWithName:fullStateNames abbreviation:abbreviation];
        
        //abopve is the same as we do in swift let states = State(name: String, abbreviation: string
        [newStates addObject:state];
    }
    return newStates;
}
@end














