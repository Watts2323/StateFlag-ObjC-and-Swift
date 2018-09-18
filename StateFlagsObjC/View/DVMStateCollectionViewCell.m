//
//  DVMStateCollectionViewCell.m
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "DVMStateCollectionViewCell.h"
#import "DVMState.h"

//Only for outlets
@interface DVMStateCollectionViewCell()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;

@end

@implementation DVMStateCollectionViewCell

//Actions would go here

-(void)updateViews:(DVMState *)state
{
    if (state) {
        self.flagImageView.image = [UIImage imageNamed:state.abbreviation];
        self.nameLabel.text = state.name;
    }
}

-(void)setState:(DVMState *)state
{
    _state = state;
    [self updateViews:state];
}

@end
