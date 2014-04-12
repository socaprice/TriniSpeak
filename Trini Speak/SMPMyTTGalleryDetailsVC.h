//
//  SMPMyTTGalleryDetailsVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-09.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMPMyTTGalleryDetailsVC : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
@property (strong, nonatomic) IBOutlet UILabel *lblCaption;
@property (strong, nonatomic) IBOutlet UITextView *txtDescription;
@property (strong, nonatomic) NSDictionary *galleryDict;

@end
