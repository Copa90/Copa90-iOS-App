//
//  Trophy.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trophy : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable level;
@property (nonatomic, strong) NSString  * _Nullable time;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
