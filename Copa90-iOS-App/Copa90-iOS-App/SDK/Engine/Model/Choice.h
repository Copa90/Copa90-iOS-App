//
//  Choice.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/18/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChoiceOption.h"

@interface Choice : NSObject

@property (nonatomic, strong) NSString  * _Nullable identifier;

@property (nonatomic, strong) NSString  * _Nullable clientId;
@property (nonatomic, strong) NSString  * _Nullable exactId;

@property (nonatomic, strong) NSString  * _Nullable time;
@property (nonatomic, strong) NSString  * _Nullable checkTime;

@property (nonatomic, strong) ChoiceOption  * _Nullable firstOption;
@property (nonatomic, strong) ChoiceOption  * _Nullable secondOption;
@property (nonatomic, strong) ChoiceOption  * _Nullable thirdOption;

- (nullable id)initWithModel:(nonnull NSMutableDictionary *)modelInstance;

@end
