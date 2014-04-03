//
//  SMPParablesVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TriniDict.h"
#import "SMPParablesDetailsVC.h"

@interface SMPParablesVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblCategory;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)btnHome:(UIButton *)sender;

@property (strong, nonatomic) NSString *lblCategoryText;//Gets title from past view via segue and also passes it into Predicate

@property (strong, nonatomic) NSString *txtMeaning; //English meaning to be passed onto next View

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
