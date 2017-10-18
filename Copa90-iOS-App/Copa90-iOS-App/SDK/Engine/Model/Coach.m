//
//  Coach.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Coach.h"

@implementation Coach

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _name           = [modelInstance valueForKey:@"name"];
        _leagueName     = [modelInstance valueForKey:@"leagueName"];
        _leagueId       = [modelInstance valueForKey:@"leagueId"];
        _teamName       = [modelInstance valueForKey:@"teamName"];
        _teamId         = [modelInstance valueForKey:@"teamId"];
    }
    return self;
}

@end
