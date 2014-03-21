//
//  prCollectionViewLayout.h
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/18/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface prCollectionViewLayout : UICollectionViewLayout

@property (nonatomic) UIEdgeInsets itemInsets;
@property (nonatomic) CGSize itemSize;
@property (nonatomic) CGFloat interItemSpacingY;
@property (nonatomic) NSInteger numberOfColumns;

@end
