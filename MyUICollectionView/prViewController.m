//
//  prViewController.m
//  MyUICollectionView
//
//  Created by Duong Ky Thinh on 3/18/14.
//  Copyright (c) 2014 Duong Ky Thinh. All rights reserved.
//

#import "prViewController.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface prViewController ()

- (UIImage *)crawlImageFromUrl: (NSURL *)photoURL ;

@end

@implementation prViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.albums = [NSMutableArray array];

    NSURL *urlPrefix = [NSURL URLWithString:@"https://raw.github.com/ShadoFlameX/PhotoCollectionView/master/Photos/"];

    NSInteger photoIndex = 0;

    for (NSInteger a = 0; a < 12; a++) {
        NSUInteger photoCount = 1;
        for (NSInteger p = 0; p < photoCount; p++) {
            // there are up to 25 photos available to load from the code repository
            NSString *photoFilename = [NSString stringWithFormat:@"thumbnail%d.jpg",photoIndex % 25];
            NSURL *photoURL = [urlPrefix URLByAppendingPathComponent:photoFilename];
            [self.albums addObject:photoURL];

            photoIndex++;
        } }

    self.collectionView.backgroundColor = [UIColor colorWithWhite:0.25f alpha:1.0f];
    [self.collectionView registerClass:[prCollectionViewCell class]
            forCellWithReuseIdentifier:PhotoCellIdentifier];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    prCollectionViewCell *photoCell =
            [collectionView dequeueReusableCellWithReuseIdentifier:PhotoCellIdentifier
                                                      forIndexPath:indexPath];

    photoCell.imageView.image = [self crawlImageFromUrl:(NSURL *)[self.albums objectAtIndex:(indexPath.row % [self.albums count])]];

    return photoCell;
}

- (UIImage *)crawlImageFromUrl: (NSURL *)photoURL{
    NSData *imageData = [NSData dataWithContentsOfURL:photoURL];
    UIImage *image = [UIImage imageWithData:imageData scale:[UIScreen mainScreen].scale];

    return image;
}

@end
