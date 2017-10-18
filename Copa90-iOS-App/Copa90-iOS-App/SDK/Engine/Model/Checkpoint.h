//
//  Checkpoint.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checkpoint : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSMutableDictionary  * _Nullable leagues;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
