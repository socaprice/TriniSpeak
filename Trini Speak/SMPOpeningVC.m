//
//  SMPOpeningVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPOpeningVC.h"

@interface SMPOpeningVC ()

@end

@implementation SMPOpeningVC

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"letterSegue"])
    {
        SMPLetterVC *destination = [segue destinationViewController];
        destination.lblCategoryText = _textForLabelCategory;
    }
    if ([[segue identifier] isEqualToString:@"parablesSegue"]) {
        SMPParablesVC *destination = [segue destinationViewController];
        destination.lblCategoryText = _textForLabelCategory;
    }
    if ([[segue identifier] isEqualToString:@"tempSegue"]) {
        //Do nothing
    }
}

-(IBAction)returnToMain:(UIStoryboardSegue *)sender
{
    //Return to Home Page
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnWords:(UIButton *)sender {
    _textForLabelCategory = @"WORD";
}

- (IBAction)btnPhrases:(UIButton *)sender {
    _textForLabelCategory = @"PHRASE";
}

- (IBAction)btnCarnival:(UIButton *)sender {
    _textForLabelCategory = @"CARNIVAL";
}

- (IBAction)btnParables:(UIButton *)sender {
    _textForLabelCategory = @"PARABLES";
}


@end
