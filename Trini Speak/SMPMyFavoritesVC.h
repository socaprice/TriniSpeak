//
//  SMPMyFavoritesVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-29.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TriniDict.h"

@interface SMPMyFavoritesVC : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSString *lblCategoryText; // Text for passing into Predicate
@property (weak, nonatomic) NSString *forRecToUpdate;

-(void)letterCheck: (int) numValue;
-(void)removeFromFav:favCriteria;

- (IBAction)btnRemoveFromFav:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextView *txtMeaning;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@end
