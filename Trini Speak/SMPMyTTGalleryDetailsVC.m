//
//  SMPMyTTGalleryDetailsVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-09.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPMyTTGalleryDetailsVC.h"

@interface SMPMyTTGalleryDetailsVC ()

@end

@implementation SMPMyTTGalleryDetailsVC

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.detailImageView.image = [UIImage imageNamed:[self.galleryDict valueForKey:@"image"]];
    self.lblCaption.text = [self.galleryDict valueForKey:@"caption"];
    self.txtDescription.text = [self.galleryDict valueForKey:@"description"];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtDescription.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
