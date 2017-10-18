//
//  AccountInfo.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "AccountInfo.h"

@implementation AccountInfo

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _chances        = [modelInstance valueForKey:@"chances"];
        _roundWins      = [modelInstance valueForKey:@"roundWins"];
        _totalPoints    = [modelInstance valueForKey:@"totalPoints"];
        _totalEstimates = [modelInstance valueForKey:@"totalEstimates"];
        _totalChoices   = [modelInstance valueForKey:@"totalChoices"];
        _dailyAward     = [modelInstance valueForKey:@"dailyAward"];
        _lastLogin      = [modelInstance valueForKey:@"lastLogin"];
    }
    return self;
}

@end
