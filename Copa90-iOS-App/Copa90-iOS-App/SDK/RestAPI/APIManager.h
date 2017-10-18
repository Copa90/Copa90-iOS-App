//
//  APIManager.h
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/17/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIManager : NSObject

+ (void)sendVerificationCodeForPhoneNumber:(nonnull NSString *)phoneNumber
                                      Code:(nonnull NSString *)code
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)askForPasswordForPhoneNumber:(nonnull NSString *)phoneNumber
                        SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                         failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)registerUserWithData:(nonnull NSMutableDictionary *)data
                SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                 failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)askForVerificationForPhoneNumber:(nonnull NSString *)phoneNumber
                            SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                             failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)selectFavoriteTeamForUser:(nonnull NSString *)phoneNumber
                             Team:(nonnull NSString *)teamId
                     SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                      failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)loginUserWithData:(nonnull NSMutableDictionary *)data
             SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
              failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)changePhoneNumberForPhoneNumber:(nonnull NSString *)phoneNumber
                               WithData:(nonnull NSMutableDictionary *)data
                           SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)askForReVerificationForPhoneNumber:(nonnull NSString *)phoneNumber
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)acceptChoiceOnFirstAttemptWithData:(nonnull NSMutableDictionary *)data
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)acceptChoiceOnRestAttemptWithData:(nonnull NSMutableDictionary *)data
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)removeChampionWithIdentifier:(nonnull NSString *)championId
                        SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                         failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)editChampionWithIdentifier:(nonnull NSString *)championId
                          WithData:(nonnull NSMutableDictionary *)data
                      SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                       failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)newChampionWithData:(nonnull NSMutableDictionary *)data
               SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)leaveChampionWithIdentifier:(nonnull NSString *)championId
                     userIdentifier:(nonnull NSString *)userId
                       SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                        failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)joinChampionWithIdentifier:(nonnull NSString *)championId
                    userIdentifier:(nonnull NSString *)userId
                      SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                       failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchChampionRankingWithFilter:(nonnull NSMutableDictionary *)filter
                          SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                           failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchEstimatesOfUserWithUserIdentifier:(nonnull NSString *)userId
                                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchPackageInfoWithPackageIdentifier:(nonnull NSString *)packageId
                                 SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)sendPaymentRequestWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchChoicesWithFilter:(nonnull NSMutableDictionary *)filter
                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchUserInfoWithUserIdentifier:(nonnull NSString *)userId
                           SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllLeaguesWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllTeamsWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                          failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllPlayersWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllCoachesWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllNotificationsWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllPackagesWithFilter:(nonnull NSMutableDictionary *)filter
                      SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                       failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchAllUsersWithFilter:(nonnull NSMutableDictionary *)filter
                   SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                    failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchChampionsOfUserWithUserIdentifier:(nonnull NSString *)userId
                                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchUsersOfTeamWithTeamIdentifier:(nonnull NSString *)teamId
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchNextObjectArrayForUserIdentifier:(nonnull NSString *)userId
                             LeagueIdentifier:(nonnull NSString *)leagueId
                                 SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

+ (void)fetchExactsWithFilter:(nonnull NSMutableDictionary *)filter
                 SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock;

@end
