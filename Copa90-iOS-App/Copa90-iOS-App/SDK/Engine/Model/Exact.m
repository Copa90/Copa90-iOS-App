//
//  Exact.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Exact.h"

@implementation Exact

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        NSMutableArray *tempSelector = [NSMutableArray array];
        tempSelector = [modelInstance objectForKey:@"selectors"];
        
        _selectors      = [NSMutableArray array];
        _identifier     = [modelInstance valueForKey:@"id"];
        _leagueId       = [modelInstance valueForKey:@"leagueId"];
        _beginningTime  = [modelInstance valueForKey:@"beginningTime"];
        _endingTime     = [modelInstance valueForKey:@"endingTime"];
        _status         = [modelInstance valueForKey:@"status"];
        _name           = [modelInstance valueForKey:@"name"];
        _topic          = [modelInstance valueForKey:@"topic"];
        _label          = [modelInstance valueForKey:@"label"];
        _answer         = [modelInstance valueForKey:@"answer"];
        
        for (int i = 0; i < [tempSelector count]; i++)
        {
            ExactSelector *es = [[ExactSelector alloc] initWithModel:[tempSelector objectAtIndex:i]];
            [_selectors addObject:es];
        }
    }
    return self;
}

@end
