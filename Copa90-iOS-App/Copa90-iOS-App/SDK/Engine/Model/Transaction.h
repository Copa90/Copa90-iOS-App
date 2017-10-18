//
//  Transaction.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Transaction : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable clientId;
@property (nonatomic, strong) NSString  * _Nullable packageId;

@property (nonatomic, strong) NSString  * _Nullable time;
@property (nonatomic, strong) NSString  * _Nullable price;
@property (nonatomic, strong) NSString  * _Nullable status;

@property (nonatomic, strong) NSObject  * _Nullable receiptInfo;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
