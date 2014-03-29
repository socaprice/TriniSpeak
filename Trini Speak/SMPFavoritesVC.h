//
//  SMPFavoritesVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-25.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TriniDict.h"

@interface SMPFavoritesVC : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSString *lblCategoryText; // Text for passing into Predicate
@property (weak, nonatomic) NSString *forRecToUpdate;

-(void)letterCheck: (int) numValue;

- (IBAction)btnRemoveFromFav:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextView *txtMeaning;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

-(void) removeFromFav:favCriteria;

@end
