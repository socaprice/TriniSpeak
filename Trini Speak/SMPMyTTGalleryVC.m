//
//  SMPMyTTGalleryVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-04-08.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPMyTTGalleryVC.h"

@interface SMPMyTTGalleryVC ()

@end

@implementation SMPMyTTGalleryVC

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.galleryArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"picCell" forIndexPath:indexPath];

    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:[[self.galleryArray objectAtIndex:row]valueForKey:@"image"]];
    cell.galleryImage.image = image;
    return cell;
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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TestGallery" ofType:@"plist"];
 
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:path]) {
     NSArray *dict = [[NSArray alloc] initWithContentsOfFile:path];
        self.galleryArray = dict;
    }else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!" message:@"For some reason there was a problem connecting to the database. Please restart the app and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    if ([[segue identifier] isEqualToString:@"picDetail"]) {
        SMPMyTTGalleryDetailsVC *mttgdvc = (SMPMyTTGalleryDetailsVC *) [segue destinationViewController];
        NSIndexPath *indexPathOfSender = [self.galleryCollectionView indexPathForCell:(UICollectionViewCell *)sender];
        mttgdvc.galleryDict = [self.galleryArray objectAtIndex:indexPathOfSender.row];
    }
    
}

-(IBAction)returnCollection:(UIStoryboardSegue *)sender{
    //just return to Collection page
}

@end
