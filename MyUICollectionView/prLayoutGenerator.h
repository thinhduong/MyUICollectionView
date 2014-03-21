//
//  prLayoutGenerator.h
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/20/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface prLayoutGenerator : NSObject

- (CGRect) generateWithRectIndex: (NSInteger)index;
- (CGFloat)calculateBoundHeightForNumberOfItems: (NSInteger)noOfItems;
- (id) init;

@end
