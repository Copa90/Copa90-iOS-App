//
//  Package.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Package.h"

@implementation Package

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _name           = [modelInstance valueForKey:@"name"];
        _beginningTime  = [modelInstance valueForKey:@"beginningTime"];
        _endingTime     = [modelInstance valueForKey:@"endingTime"];
        _chance         = [modelInstance valueForKey:@"chance"];
        _price          = [modelInstance valueForKey:@"price"];
        _offer          = [modelInstance valueForKey:@"offer"];
        _explanation    = [modelInstance valueForKey:@"explanation"];
    }
    return self;
}

@end
