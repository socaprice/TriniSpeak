//
//  SMPMyTTGalleryVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-08.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageCell.h"
#import "SMPMyTTGalleryDetailsVC.h"

@interface SMPMyTTGalleryVC : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) IBOutlet UICollectionView *galleryCollectionView;

@property (strong, nonatomic) NSArray *galleryArray;

@end
