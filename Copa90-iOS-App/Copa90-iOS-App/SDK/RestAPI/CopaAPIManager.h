//
//  CopaAPIManager.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/17/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFHTTPSessionManager.h>

@interface CopaAPIManager : AFHTTPSessionManager

+ (CopaAPIManager *)sharedManager;

@end
