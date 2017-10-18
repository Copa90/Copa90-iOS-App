//
//  Verification.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Verification.h"

@implementation Verification

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier             = [modelInstance valueForKey:@"id"];
        _phoneNumber            = [modelInstance valueForKey:@"phoneNumber"];
        _verificationNumber     = [modelInstance valueForKey:@"verificationNumber"];
        _status                 = [modelInstance valueForKey:@"status"];
    }
    return self;
}

@end
