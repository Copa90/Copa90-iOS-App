//
//  Trophy.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Trophy.h"

@implementation Trophy

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _time           = [modelInstance valueForKey:@"time"];
        _level          = [modelInstance valueForKey:@"level"];
    }
    return self;
}

@end
