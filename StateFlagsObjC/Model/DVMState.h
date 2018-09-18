//
//  DVMState.h
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//


// the diff between our H AND m files- h is public and m is private
#import <Foundation/Foundation.h>

@interface DVMState : NSObject

//1) atomic is the default
// 2) Strong is the default
// 3) readwrite is the default

//This is making a getter under the Hood- thats why evn properties are methods in objC
@property (nonatomic, copy, readonly) NSString* name;
@property ( nonatomic, copy, readonly) NSString* abbreviation;


-(instancetype)initWithName:(NSString *) name abbreviation:(NSString *)abbreviation;

@end
