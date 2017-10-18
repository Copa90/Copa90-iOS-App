//
//  ChoiceOption.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "ChoiceOption.h"

@implementation ChoiceOption

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _choice         = [modelInstance valueForKey:@"choice"];
        _point          = [modelInstance valueForKey:@"point"];
        _status         = [modelInstance valueForKey:@"status"];
    }
    return self;
}

@end
