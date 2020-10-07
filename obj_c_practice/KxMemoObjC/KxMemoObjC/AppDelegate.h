//
//  AppDelegate.h
//  KxMemoObjC
//
//  Created by 이다훈 on 2020/09/10.
//  Copyright © 2020 이다훈. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

