//
//  DVMStateCollectionViewCell.h
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import <UIKit/UIKit.h>

//Import is more of a copy and paste because it gives you the whole thing
//@class is just saying this class exists( benefits- it helps our compiler out with the initial nbuild
@class DVMState;

@interface DVMStateCollectionViewCell : UICollectionViewCell

//nonull means that it cant be nil
@property(nonatomic,strong,nonnull) DVMState *state;

@end




















