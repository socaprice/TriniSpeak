//
//  SMPTTGalleryDetailsVCViewController.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-06.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMPTTGalleryDetailsVC : UIViewController

{
    NSString *galleryItemName;
    
    CGFloat previousScale;
    CGFloat previousRotation;
    
    CGFloat beginX;
    CGFloat beginY;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSString *galleryItemName;
//- (IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender;
- (IBAction)tapGesture:(UITapGestureRecognizer *)sender;
- (IBAction)rotationGesture:(UIRotationGestureRecognizer *)sender;

@end
