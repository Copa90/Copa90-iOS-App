//
//  Estimate.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Estimate : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable clientId;
@property (nonatomic, strong) NSString  * _Nullable predictId;

@property (nonatomic, strong) NSString  * _Nullable status;

@property (nonatomic, strong) NSString  * _Nullable time;
@property (nonatomic, strong) NSString  * _Nullable checkTime;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
