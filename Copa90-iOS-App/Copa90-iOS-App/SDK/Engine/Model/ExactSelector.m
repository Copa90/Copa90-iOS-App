//
//  ExactSelector.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "ExactSelector.h"

@implementation ExactSelector

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _choice         = [modelInstance valueForKey:@"choice"];
        _firstPoint     = [[modelInstance valueForKey:@"point"] valueForKey:@"first"];
        _secondPoint    = [[modelInstance valueForKey:@"point"] valueForKey:@"second"];
        _thirdPoint     = [[modelInstance valueForKey:@"point"] valueForKey:@"third"];
    }
    return self;
}

@end
