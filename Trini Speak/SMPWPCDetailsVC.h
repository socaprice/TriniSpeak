//
//  SMPWPCDetailsVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TriniDict.h"

@interface SMPWPCDetailsVC : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@property (strong, nonatomic) NSString *lblLetterText; //Text for Letter chosen on View
@property (strong, nonatomic) NSString *lblCategoryText; //Text for passing into Predicate
@property (strong, nonatomic) NSString *txtHoldMeaning;

@property (weak, nonatomic) NSString *forRecToUpdate;
@property (strong, nonatomic) IBOutlet UILabel *lblLetter;
@property (strong, nonatomic) IBOutlet UITextView *txtMeaning;

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

-(void)letterCheck: (int) numValue; // This is the method that will allow me to load the meaning into the view immediately and also set the alert when there is nothing that fits the letter criteria

-(void) addToFav: (NSString *) favCriteria;

- (IBAction)btnBack:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;
- (IBAction)btnAddToFavs:(UIButton *)sender;

@end
