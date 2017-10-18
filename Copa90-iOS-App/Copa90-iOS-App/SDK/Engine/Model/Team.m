//
//  Team.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Team.h"

@implementation Team

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _name           = [modelInstance valueForKey:@"name"];
        _code           = [modelInstance valueForKey:@"code"];
        _leagueId       = [modelInstance valueForKey:@"leagueId"];
    }
    return self;
}

@end
