//
//  prLayoutGenerator.m
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/20/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import "prLayoutGenerator.h"

@implementation prLayoutGenerator

static CGFloat const IW = 77;
static CGFloat const IH = 55;

static CGFloat const twiceIW = 2 * IW;
static CGFloat const twiceIH = 2 * IH;

-(id) init{
    self = [super init];
    
    if (self){
        
    }
    
    return self;
}

- (CGFloat)calculateBoundHeightForNumberOfItems: (NSInteger)noOfItems {
    return twiceIH * (noOfItems + 1) / 5;
}

- (CGRect) generateWithRectIndex: (NSInteger)index{
    NSInteger blockId = index / 5;
    NSInteger typeId = index % 5;

    CGPoint topLeft = [self getTopLeftPointForBlock: blockId andType: typeId];
    CGFloat width = [self getWidthForType:typeId];
    CGFloat height = [self getHeightForType:typeId];

    return CGRectMake(topLeft.x, topLeft.y, width, height);
}

- (CGFloat) getWidthForType: (NSInteger) typeId
{
    return typeId == 0 ? twiceIW : IW;
}

- (CGFloat) getHeightForType: (NSInteger) typeId
{
    return typeId == 0 ? twiceIH : IH;
}

- (CGPoint) getTopLeftPointForBlock: (NSInteger) blockId andType: (NSInteger) typeId
{
    switch (blockId % 2)
    {
        case 0:
            switch (typeId)
            {
                case 0:
                    return CGPointMake(0, blockId * twiceIH);
                case 1:
                    return CGPointMake(twiceIW, blockId * twiceIH);
                case 2:
                    return CGPointMake(twiceIW + IW, blockId * twiceIH);
                case 3:
                    return CGPointMake(twiceIW, blockId * twiceIH + IH);
                case 4:
                    return CGPointMake(twiceIW + IW, blockId * twiceIH + IH);
            }
            break;
        case 1:
            switch (typeId)
            {
                case 0:
                    return CGPointMake(twiceIW, blockId * twiceIH);
                case 1:
                    return CGPointMake(0, blockId * twiceIH);
                case 2:
                    return CGPointMake(IW, blockId * twiceIH);
                case 3:
                    return CGPointMake(0, blockId * twiceIH + IH);
                case 4:
                    return CGPointMake(IW, blockId * twiceIH + IH);
            }
            break;
    }

    return CGPointMake(0,0);
}
@end
