//
//  prCollectionViewCell.m
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/18/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import "prCollectionViewCell.h"
#import <QuartzCore/QuartzCore.h>

@interface prCollectionViewCell ()

@property (nonatomic, strong, readwrite) UIImageView *imageView;

@end

@implementation prCollectionViewCell {

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0.85f alpha:1.0f];

        self.layer.borderColor = [UIColor whiteColor].CGColor;
        self.layer.borderWidth = 3.0f;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowRadius = 3.0f;
        self.layer.shadowOffset = CGSizeMake(0.0f, 2.0f);
        self.layer.shadowOpacity = 0.5f;

        self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        self.imageView.clipsToBounds = YES;

        [self.contentView addSubview:self.imageView];
    }

    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];

    self.imageView.image = nil;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
