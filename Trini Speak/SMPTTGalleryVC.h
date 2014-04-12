//
//  SMPTTGalleryVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-29.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPTTGalleryDetailsVC.h"

@interface SMPTTGalleryVC : UIViewController
{
    NSArray *list;
}

@property (strong, nonatomic) NSArray *list;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
