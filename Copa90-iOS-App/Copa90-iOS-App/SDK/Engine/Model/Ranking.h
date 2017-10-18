//
//  Ranking.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ranking : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable clientId;
@property (nonatomic, strong) NSString  * _Nullable championId;

@property (nonatomic, strong) NSString  * _Nullable points;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
