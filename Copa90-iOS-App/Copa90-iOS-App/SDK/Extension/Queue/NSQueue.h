//
//  NSQueue.h
//  Copa90-iOS-App
//
//  Created by Alireza Arabi on 9/17/16.
//  Copyright © 2016 Copa90 Co. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSQueue : NSObject

- (nullable instancetype)init;

- (nullable instancetype)initWithIdentifier:(nonnull NSString *)identifier Capacity:(NSInteger)capacity;

- (void)useAutomaticCachePolicyInOperations;

- (void)saveQueueContent;

- (void)loadQueueContentForIdentifier:(nonnull NSString *)identifier;

- (void)enqueue:(nonnull id)anObject;

- (nullable id)dequeue;

- (nullable id)peekObjectAtIndex:(NSInteger)index;

- (void)clearingQueue;

- (int)currentEmptySpaces;

- (BOOL)checkForEmptySpace;

- (BOOL)checkFillQueue;

@end
