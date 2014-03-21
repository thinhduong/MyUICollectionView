//
//  prViewController.h
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/18/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "prCollectionViewLayout.h"
#import "prCollectionViewCell.h"

@interface prViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) NSMutableArray *albums;
@property (nonatomic, weak) IBOutlet prCollectionViewLayout* layout;

@end
