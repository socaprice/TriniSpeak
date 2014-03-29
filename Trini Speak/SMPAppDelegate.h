//
//  SMPAppDelegate.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPWPCDetailsVC.h"
#import "SMPParablesVC.h"
#import "SMPLetterVC.h"
#import "SMPOpeningVC.h"

@interface SMPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
