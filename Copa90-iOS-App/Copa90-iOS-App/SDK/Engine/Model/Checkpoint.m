//
//  Checkpoint.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Checkpoint.h"

@implementation Checkpoint

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _leagues        = [NSMutableDictionary dictionaryWithDictionary:[modelInstance valueForKey:@"leagues"]];
    }
    return self;
}

@end
