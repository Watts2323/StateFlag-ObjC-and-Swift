//
//  DVMStateController.h
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DVMState.h"
#import "DVMStateHelper.h"

@interface DVMStateController : NSObject

//This is our source of truth
@property (nonatomic,strong) NSArray *states;

-(NSArray *)addStates;

//singleton

+(DVMStateController *)sharedController;

@end
