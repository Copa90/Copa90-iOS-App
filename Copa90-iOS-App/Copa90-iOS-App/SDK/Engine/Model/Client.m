//
//  Client.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Client.h"

@implementation Client

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _referrer       = [modelInstance valueForKey:@"referrer"];
        _fullname       = [modelInstance valueForKey:@"fullname"];
        _phoneNumber    = [modelInstance valueForKey:@"phoneNumber"];
        _username       = [modelInstance valueForKey:@"username"];
        _time           = [modelInstance valueForKey:@"time"];
        _email          = [modelInstance valueForKey:@"email"];
        _teamId         = [modelInstance valueForKey:@"teamId"];
        
        _trophyModel        = [[Trophy alloc] initWithModel:[modelInstance valueForKey:@"trophyModel"]];
        _referralModel      = [[Referral alloc] initWithModel:[modelInstance valueForKey:@"referralModel"]];
        _checkpointModel    = [[Checkpoint alloc] initWithModel:[modelInstance valueForKey:@"checkpointModel"]];
        _accountInfoModel   = [[AccountInfo alloc] initWithModel:[modelInstance valueForKey:@"accountInfoModel"]];
    }
    return self;
}

@end
