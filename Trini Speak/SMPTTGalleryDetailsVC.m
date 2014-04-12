//
//  SMPTTGalleryDetailsVCViewController.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-06.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPTTGalleryDetailsVC.h"

@interface SMPTTGalleryDetailsVC ()

@end

@implementation SMPTTGalleryDetailsVC

@synthesize galleryItemName;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateImage:)];
//    [self.view addGestureRecognizer:rotationGesture];
//    
//    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(scaleImage:)];
//    [self.view addGestureRecognizer:pinchGesture];
//
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resetImage:)];
//    [self.view addGestureRecognizer:tapGesture];
//    
//    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveImage:)];
//    [panGesture setMinimumNumberOfTouches:1];
//    [panGesture setMaximumNumberOfTouches:1];
//    [self.view addGestureRecognizer:panGesture];
    
    self.title = galleryItemName;
    
    NSString *imgName = [NSString stringWithFormat:@"%@.jpeg", galleryItemName];
    self.imageView.image = [UIImage imageNamed:imgName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Gestures methods
/*
- (void)rotateImage:(UIRotationGestureRecognizer *)recognizer
{
    
    if([recognizer state] == UIGestureRecognizerStateEnded) {
        
        previousRotation = 0.0;
        return;
    }
    
    CGFloat newRotation = 0.0 - (previousRotation - [recognizer rotation]);
    
    CGAffineTransform currentTransformation = self.imageView.transform;
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransformation, newRotation);
    
    self.imageView.transform = newTransform;
    
    previousRotation = [recognizer rotation];
}

- (void)scaleImage:(UIPinchGestureRecognizer *)recognizer
{
    
    if([recognizer state] == UIGestureRecognizerStateEnded) {
        
        previousScale = 1.0;
        return;
    }
    
    CGFloat newScale = 1.0 - (previousScale - [recognizer scale]);
    
    CGAffineTransform currentTransformation = self.imageView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransformation, newScale, newScale);
    
    self.imageView.transform = newTransform;
    
    previousScale = [recognizer scale];
}
*/
//- (void)resetImage:(UITapGestureRecognizer *)recognizer
//{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.3];
//    
//    self.imageView.transform = CGAffineTransformIdentity;
//    
//    [self.imageView setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
//    
//    [UIView commitAnimations];
//}

//- (void)moveImage:(UIPanGestureRecognizer *)recognizer
//{
//    CGPoint newCenter = [recognizer translationInView:self.view];
//    
//    if([recognizer state] == UIGestureRecognizerStateBegan) {
//        
//        beginX = self.imageView.center.x;
//        beginY = self.imageView.center.y;
//    }
//    
//    newCenter = CGPointMake(beginX + newCenter.x, beginY + newCenter.y);
//    
//    [self.imageView setCenter:newCenter];
//    
//}
/****************Sylvan
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender {
//    if([recognizer state] == UIGestureRecognizerStateEnded) {
//        
//        previousScale = 1.0;
//        return;
//    }
//    
//    CGFloat newScale = 1.0 - (previousScale - [recognizer scale]);
//    
//    CGAffineTransform currentTransformation = self.imageView.transform;
//    CGAffineTransform newTransform = CGAffineTransformScale(currentTransformation, newScale, newScale);
//    
//    self.imageView.transform = newTransform;
//    
//    previousScale = [recognizer scale];
//
//}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    
    self.imageView.transform = CGAffineTransformIdentity;
    
    [self.imageView setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    
    [UIView commitAnimations];

}

- (IBAction)rotationGesture:(UIRotationGestureRecognizer *)sender {
}
@end
