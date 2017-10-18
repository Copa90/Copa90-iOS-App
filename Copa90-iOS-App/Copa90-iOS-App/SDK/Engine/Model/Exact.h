//
//  Exact.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExactSelector.h"

@interface Exact : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;
@property (nonatomic, strong) NSString  * _Nullable leagueId;

@property (nonatomic, strong) NSString  * _Nullable name;
@property (nonatomic, strong) NSString  * _Nullable topic;
@property (nonatomic, strong) NSString  * _Nullable label;

@property (nonatomic, strong) NSString  * _Nullable beginningTime;
@property (nonatomic, strong) NSString  * _Nullable endingTime;

@property (nonatomic, strong) NSString  * _Nullable status;
@property (nonatomic, strong) NSString  * _Nullable answer;

@property (nonatomic, strong) NSMutableArray  * _Nullable selectors;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
