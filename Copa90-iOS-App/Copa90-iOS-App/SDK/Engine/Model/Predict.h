//
//  Predict.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Predict : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;
@property (nonatomic, strong) NSString  * _Nullable leagueId;

@property (nonatomic, strong) NSString  * _Nullable weekNumber;
@property (nonatomic, strong) NSString  * _Nullable possibility;
@property (nonatomic, strong) NSString  * _Nullable point;

@property (nonatomic, strong) NSString  * _Nullable beginningTime;
@property (nonatomic, strong) NSString  * _Nullable endingTime;

@property (nonatomic, strong) NSString  * _Nullable status;
@property (nonatomic, strong) NSString  * _Nullable tag;
@property (nonatomic, strong) NSString  * _Nullable occurrence;

@property (nonatomic, strong) NSString  * _Nullable explanation;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
