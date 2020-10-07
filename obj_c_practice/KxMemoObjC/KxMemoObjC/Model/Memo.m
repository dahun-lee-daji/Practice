//
//  Memo.m
//  KxMemoObjC
//
//  Created by 이다훈 on 2020/09/11.
//  Copyright © 2020 이다훈. All rights reserved.
//

#import "Memo.h"

@implementation Memo

- (instancetype)initWithContent: (NSString*)content{
    self= [super init];
    if(self != nil){
        _content = content;
        _insertDate = [NSDate date];
    }
    return self;
}

+(NSArray*) dummyMemoList{
    Memo* memo1 = [[Memo alloc] initWithContent:@"Lorem ipsum 111"];
    Memo* memo2 = [[Memo alloc] initWithContent:@"Lorem ipsum 222"];

    return [NSArray arrayWithObjects:memo1,memo2, nil];
}

@end
