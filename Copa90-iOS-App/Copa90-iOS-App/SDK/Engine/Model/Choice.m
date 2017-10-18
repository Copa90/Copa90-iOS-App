//
//  Choice.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Choice.h"

@implementation Choice

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _clientId       = [modelInstance valueForKey:@"clientId"];
        _exactId        = [modelInstance valueForKey:@"exactId"];
        _checkTime      = [modelInstance valueForKey:@"checkTime"];
        _time           = [modelInstance valueForKey:@"time"];
        
        _firstOption    = [[ChoiceOption alloc] initWithModel:[modelInstance valueForKey:@"firstOption"]];
        _secondOption   = [[ChoiceOption alloc] initWithModel:[modelInstance valueForKey:@"secondOption"]];
        _thirdOption    = [[ChoiceOption alloc] initWithModel:[modelInstance valueForKey:@"thirdOption"]];
    }
    return self;
}

@end
