//
//  Client.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccountInfo.h"
#import "Trophy.h"
#import "Referral.h"
#import "Checkpoint.h"

@interface Client : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable referrer;
@property (nonatomic, strong) NSString  * _Nullable fullname;
@property (nonatomic, strong) NSString  * _Nullable phoneNumber;
@property (nonatomic, strong) NSString  * _Nullable time;
@property (nonatomic, strong) NSString  * _Nullable username;
@property (nonatomic, strong) NSString  * _Nullable email;
@property (nonatomic, strong) NSString  * _Nullable teamId;

@property (nonatomic, strong) Trophy  * _Nullable trophyModel;

@property (nonatomic, strong) Referral  * _Nullable referralModel;

@property (nonatomic, strong) Checkpoint  * _Nullable checkpointModel;

@property (nonatomic, strong) AccountInfo  * _Nullable accountInfoModel;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
