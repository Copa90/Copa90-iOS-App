//
//  ExactSelector.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExactSelector : NSObject

@property (nonatomic, strong) NSString  * _Nullable choice;

@property (nonatomic, strong) NSString  * _Nullable firstPoint;
@property (nonatomic, strong) NSString  * _Nullable secondPoint;
@property (nonatomic, strong) NSString  * _Nullable thirdPoint;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
