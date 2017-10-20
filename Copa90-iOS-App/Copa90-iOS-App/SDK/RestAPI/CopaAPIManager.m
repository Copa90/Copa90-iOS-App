//
//  CopaAPIManager.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/17/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "CopaAPIManager.h"
#import "AFNetworkActivityIndicatorManager.h"
#import "PublicHeaders.h"

@implementation CopaAPIManager

- (id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if(!self)
        return nil;
    
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    
    return self;
}

#pragma mark - Singleton Methods

+ (CopaAPIManager *)sharedManager
{
    static dispatch_once_t pred;
    static CopaAPIManager *_sharedManager = nil;
    
    dispatch_once(&pred, ^{
#ifndef DEBUG
        _sharedManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@:4000/api", PRODUCTIONSERVERADDRESS]]];
#else
        _sharedManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@:4000/api", DEVELOPMENTSERVERADDRESS]]];
#endif
    });
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkRequestDidFinish:) name:AFNetworkingTaskDidCompleteNotification object:nil];
    
    return _sharedManager;
}

- (void)networkRequestDidFinish:(NSNotification *)notification
{
    NSError *error = [notification.userInfo objectForKey:AFNetworkingTaskDidCompleteErrorKey];
    NSDictionary *responseObject = [notification.userInfo objectForKey:AFNetworkingTaskDidCompleteSerializedResponseKey];
    long statusCode = [[responseObject valueForKey:@"statusCode"] longValue];
    
    if (error)
    {
        
    }
    
    if (statusCode == 401 || statusCode == 403 || statusCode == 0)
    {
        
    }
}

@end
