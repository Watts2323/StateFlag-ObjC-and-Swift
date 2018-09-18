//
//  DVMStateCollectionViewController.m
//  StateFlagsObjC
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "DVMStateCollectionViewController.h"
#import "DVMStateController.h"
#import "DVMStateCollectionViewCell.h"
#import "DVMState.h"

@interface DVMStateCollectionViewController ()

@end

@implementation DVMStateCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];
}



#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return DVMStateController.sharedController.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
   DVMStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    DVMState *state = [DVMStateController sharedController].states[indexPath.row];
    
    cell.state = state;
    
    return cell;
}

@end
