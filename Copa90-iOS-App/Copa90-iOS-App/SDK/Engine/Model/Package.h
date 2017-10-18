//
//  Package.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Package : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;
@property (nonatomic, strong) NSString  * _Nullable name;

@property (nonatomic, strong) NSString  * _Nullable beginningTime;
@property (nonatomic, strong) NSString  * _Nullable endingTime;

@property (nonatomic, strong) NSString  * _Nullable chance;
@property (nonatomic, strong) NSString  * _Nullable price;

@property (nonatomic, strong) NSString  * _Nullable offer;
@property (nonatomic, strong) NSString  * _Nullable explanation;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
