//
//  AccountInfo.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountInfo : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable chances;

@property (nonatomic, strong) NSString  * _Nullable lastLogin;
@property (nonatomic, strong) NSString  * _Nullable dailyAward;

@property (nonatomic, strong) NSString  * _Nullable totalChoices;
@property (nonatomic, strong) NSString  * _Nullable totalEstimates;

@property (nonatomic, strong) NSString  * _Nullable totalPoints;
@property (nonatomic, strong) NSString  * _Nullable roundWins;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
