//
//  Transaction.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance
{
    self = [super init];
    if (self)
    {
        _identifier     = [modelInstance valueForKey:@"id"];
        _clientId       = [modelInstance valueForKey:@"clientId"];
        _packageId      = [modelInstance valueForKey:@"packageId"];
        _status         = [modelInstance valueForKey:@"status"];
        _price          = [modelInstance valueForKey:@"price"];
        _time           = [modelInstance valueForKey:@"time"];
        _receiptInfo    = [modelInstance valueForKey:@"receiptInfo"];
    }
    return self;
}

@end
