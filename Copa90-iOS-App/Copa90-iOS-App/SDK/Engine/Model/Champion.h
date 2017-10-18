//
//  Champion.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"

@interface Champion : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable name;
@property (nonatomic, strong) NSString  * _Nullable capacity;

@property (nonatomic, strong) Client  * _Nullable clientRel;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
