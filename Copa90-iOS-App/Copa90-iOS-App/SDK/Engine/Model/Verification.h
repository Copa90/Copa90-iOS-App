//
//  Verification.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Verification : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable phoneNumber;
@property (nonatomic, strong) NSString  * _Nullable verificationNumber;
@property (nonatomic, strong) NSString  * _Nullable status;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
