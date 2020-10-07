//
//  Memo.h
//  KxMemoObjC
//
//  Created by 이다훈 on 2020/09/11.
//  Copyright © 2020 이다훈. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Memo : NSObject

@property (strong, nonatomic) NSString * content;
@property (strong, nonatomic) NSDate * insertDate;

- (instancetype)initWithContent: (NSString*)content;

+(NSArray*) dummyMemoList;

@end

NS_ASSUME_NONNULL_END
