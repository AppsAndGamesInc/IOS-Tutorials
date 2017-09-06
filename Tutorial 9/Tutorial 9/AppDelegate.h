//
//  AppDelegate.h
//  Tutorial 9
//
//  Created by Marwan Harb on 9/6/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

