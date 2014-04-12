//
//  SMPTTTidbitsVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-29.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPTTTidbitsVC.h"

@interface SMPTTTidbitsVC ()

@end

@implementation SMPTTTidbitsVC

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
    _txtTidBit.delegate = self;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
