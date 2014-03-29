//
//  SMPFavoritesVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-25.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPFavoritesVC.h"

@interface SMPFavoritesVC ()

@end

@implementation SMPFavoritesVC

@synthesize fetchedResultsController = _fetchedResultsController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)letterCheck: (int) numValue{
    
    if ([self.fetchedResultsController fetchedObjects].count <= numValue) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"There are no Favorites stored." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alert show];
    }else{
        TriniDict *slang = [[self.fetchedResultsController fetchedObjects] objectAtIndex:numValue];
        _txtMeaning.text = slang.eEnglish;
        _forRecToUpdate = slang.aNum;
    }
}

- (IBAction)btnRemoveFromFav:(UIButton *)sender {
    [self removeFromFav:_forRecToUpdate];
}

-(void)viewWillAppear:(BOOL)animated{
    [self letterCheck:0];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Passes the managedObjectContext along from the AppDelegate
    id delegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [delegate managedObjectContext];
    
    NSError *error = nil;
    if (![[self fetchedResultsController]performFetch:&error]) {
        // Handle the error
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"For some reason there was a problem connecting to the database. Please restart the app and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -
#pragma mark PickerView Controls section
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self.fetchedResultsController fetchedObjects] count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    // Display the Words we've fetched on the picker
    TriniDict *slang = [[self.fetchedResultsController fetchedObjects] objectAtIndex:row];
    return slang.dTrini;
    
    //Another way to do it -- return [[[self.fetchedResultsController fetchedObjects] objectAtIndex:row]valueForKey:@"dTrini"];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [self letterCheck:(int)row];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel *tView = (UILabel *)view;
    if (!tView){
        tView = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        tView.font = [UIFont boldSystemFontOfSize:18];
        tView.adjustsFontSizeToFitWidth = YES;
        tView.textAlignment = NSTextAlignmentCenter;
    }
    // Fill the label text here
    [tView setText:[[[self.fetchedResultsController fetchedObjects] objectAtIndex:row]valueForKey:@"dTrini"]];
    return tView;
}

#pragma mark -
#pragma mark Fetched Results Controller section
-(NSFetchedResultsController *) fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"TriniDict"
                                              inManagedObjectContext:[self managedObjectContext]];
    [fetchRequest setEntity:entity];
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cCategory == 'WORD'"];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"fFav == 1"];
    
    [fetchRequest setPredicate:predicate];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"dTrini"
                                                                   ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];
    
    
    _fetchedResultsController = [[NSFetchedResultsController alloc]initWithFetchRequest:fetchRequest managedObjectContext:[self managedObjectContext] sectionNameKeyPath:@"bLetter" cacheName:nil];
    
    return _fetchedResultsController;
    
}
#pragma mark
#pragma Add To Favorites section
-(void) removeFromFav:favCriteria{
    NSError *error;
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                   entityForName:@"TriniDict" inManagedObjectContext:[self managedObjectContext]];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"aNum == %@",favCriteria];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if([fetchedObjects count] > 0)
    {
        TriniDict *slangObj = [fetchedObjects objectAtIndex:0];
        slangObj.fFav = [NSNumber numberWithBool:NO];
    }
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        // Handle the error
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"For some reason there was a problem connecting to the database. Please restart the app and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)btnHome:(UIButton *)sender {
}
@end
