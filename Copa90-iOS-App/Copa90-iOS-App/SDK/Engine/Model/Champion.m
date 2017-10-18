//
//  Champion.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Champion.h"

@implementation Champion

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _name           = [modelInstance valueForKey:@"name"];
        _capacity       = [modelInstance valueForKey:@"capacity"];
        
        _clientRel      = [[Client alloc] initWithModel:[modelInstance valueForKey:@"clientRel"]];
    }
    return self;
}

@end
