//
//  Estimate.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Estimate.h"

@implementation Estimate

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _clientId       = [modelInstance valueForKey:@"clientId"];
        _predictId      = [modelInstance valueForKey:@"predictId"];
        _status         = [modelInstance valueForKey:@"status"];
        _checkTime      = [modelInstance valueForKey:@"checkTime"];
        _time           = [modelInstance valueForKey:@"time"];
    }
    return self;
}

@end
