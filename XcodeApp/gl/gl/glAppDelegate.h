//
//  glAppDelegate.h
//  gl
//
//  Created by ヨウスケ on 2012/08/19.
//  Copyright (c) 2012年 Yosuke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface glAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
