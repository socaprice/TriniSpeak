//
//  SMPTTGalleryVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-29.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPTTGalleryVC.h"

@interface SMPTTGalleryVC ()

@end

@implementation SMPTTGalleryVC

@synthesize list;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)returnToGalleryList:(UIStoryboardSegue *)sender{
    //just return to Parables page
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"Products";
    
//    NSArray *listArray = [[NSArray alloc] initWithObjects:@"img0", @"img1", @"img2", @"img3", @"img4", @"img5", @"img6", @"img7", @"img8", @"img9", nil];
    NSArray *listArray = [[NSArray alloc] initWithObjects:
                          @"Steelpan",
                          @"Beach Sunset",
                          @"Overlooking City",
                          @"Performing Arts Centre",
                          @"Fort George",
                          @"Port-of-Spain Street",
                          @"Soca Artist Fay-Ann Lyons-Alvarez",
                          @"Maracus Beach",
                          @"Oil City Down South",
                          @"Industry In South",
                          @"Moko Jumbies",
                          @"Pitch Lake",
                          @"Kiddies Carnival 2",
                          @"Near End of Jour Ouvert",
                          @"Kiddies Carnival 1",
                          @"Soca Artist Destra Garcia",
                          @"Near Start of Jour Ouvert",
                          nil];
    self.list = listArray;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.textLabel.text = [list objectAtIndex:[indexPath row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
        if ([[segue identifier] isEqualToString:@"imageDetail"]) {
//            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//            NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
            [segue.destinationViewController  setGalleryItemName:[list objectAtIndex:[self.tableView.indexPathForSelectedRow row]]];
        }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
