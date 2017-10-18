//
//  Coach.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coach : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;
@property (nonatomic, strong) NSString  * _Nullable name;

@property (nonatomic, strong) NSString  * _Nullable leagueName;
@property (nonatomic, strong) NSString  * _Nullable leagueId;

@property (nonatomic, strong) NSString  * _Nullable teamName;
@property (nonatomic, strong) NSString  * _Nullable teamId;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
