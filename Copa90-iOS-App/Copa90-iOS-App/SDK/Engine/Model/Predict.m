//
//  Predict.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Predict.h"

@implementation Predict

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _leagueId       = [modelInstance valueForKey:@"leagueId"];
        _beginningTime  = [modelInstance valueForKey:@"beginningTime"];
        _endingTime     = [modelInstance valueForKey:@"endingTime"];
        _status         = [modelInstance valueForKey:@"status"];
        _tag            = [modelInstance valueForKey:@"tag"];
        _occurrence     = [modelInstance valueForKey:@"occurrence"];
        _weekNumber     = [modelInstance valueForKey:@"weekNumber"];
        _possibility    = [modelInstance valueForKey:@"possibility"];
        _point          = [modelInstance valueForKey:@"point"];
        _explanation    = [modelInstance valueForKey:@"explanation"];
    }
    return self;
}

@end
