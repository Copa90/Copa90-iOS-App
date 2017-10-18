//
//  Ranking.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Ranking.h"

@implementation Ranking

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _clientId       = [modelInstance valueForKey:@"clientId"];
        _championId     = [modelInstance valueForKey:@"championId"];
        _points         = [modelInstance valueForKey:@"point"];
    }
    return self;
}

@end
