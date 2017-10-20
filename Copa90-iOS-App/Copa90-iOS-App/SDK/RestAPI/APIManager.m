//
//  APIManager.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/17/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "APIManager.h"
#import "RestAPI.h"

@implementation APIManager

#pragma mark - Request Utility

+ (nullable NSString *)appendAccessToken:(nonnull NSString*)uri
{
    NSString *accessToken = @"";
    if ([uri containsString:@"?"])
        uri = [uri stringByAppendingFormat:@"&access_token=%@", accessToken];
    else
        uri = [uri stringByAppendingFormat:@"?access_token=%@", accessToken];
    return uri;
}

+ (nullable NSData *)convertNSDictionaryToNSData:(NSMutableDictionary *)data
{
    return [NSKeyedArchiver archivedDataWithRootObject:data];
}

#pragma mark - AAA Process

+ (void)sendVerificationCodeForPhoneNumber:(nonnull NSString *)phoneNumber
                                      Code:(nonnull NSString *)code
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"verifications/%@/verify/%@", phoneNumber, code];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)askForPasswordForPhoneNumber:(nonnull NSString *)phoneNumber
                        SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                         failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/%@/sendPassword", phoneNumber];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)registerUserWithData:(nonnull NSMutableDictionary *)data
                SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                 failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:data Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)askForVerificationForPhoneNumber:(nonnull NSString *)phoneNumber
                            SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                             failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"verifications/%@/sendVerification", phoneNumber];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)selectFavoriteTeamForUserIdentifier:(nonnull NSString *)userId
                             TeamIdentifier:(nonnull NSString *)teamId
                               SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"teams/%@/selectFavorite/%@", userId, teamId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)loginUserWithData:(nonnull NSMutableDictionary *)data
             SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
              failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/login"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:data Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)changePhoneNumberForWithData:(nonnull NSMutableDictionary *)data
                        SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                         failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/changePhone"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] putMethodWithQueryString:uri Parameters:data SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)askForReVerificationForPhoneNumber:(nonnull NSString *)phoneNumber
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"verifications/%@/resendVerification", phoneNumber];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

#pragma mark - Estimate Process

+ (void)acceptEstimateWithData:(nonnull NSMutableDictionary *)data
                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"estimates"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:data Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

#pragma mark - Choice Process

+ (void)acceptChoiceOnFirstAttemptWithData:(nonnull NSMutableDictionary *)data
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"choices"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:data Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)acceptChoiceOnRestAttemptWithChoiceIdentifier:(nonnull NSString *)choiceId
                                                 Data:(nonnull NSMutableDictionary *)data
                                         SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                          failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"choices/%@", choiceId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] putMethodWithQueryString:uri Parameters:data SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

#pragma mark - Champion Process

+ (void)removeChampionWithChampionIdentifier:(nonnull NSString *)championId
                                SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                 failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"champions/%@", championId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] deleteMethodWithQueryString:uri Parameters:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)editChampionWithChampionIdentifier:(nonnull NSString *)championId
                                  WithData:(nonnull NSMutableDictionary *)data
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"champions/%@", championId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] putMethodWithQueryString:uri Parameters:data SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)newChampionWithData:(nonnull NSMutableDictionary *)data
               SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"champions"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:data Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)leaveChampionWithChampionIdentifier:(nonnull NSString *)championId
                             userIdentifier:(nonnull NSString *)userId
                               SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"champions/%@/leaveChampion/%@", championId, userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)joinChampionWithChampionIdentifier:(nonnull NSString *)championId
                            userIdentifier:(nonnull NSString *)userId
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"champions/%@/joinChampion/%@", championId, userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] postMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    }failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchChampionRankingWithChampionIdentifier:(nonnull NSString *)championId
                                      SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                       failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"ranking?filter={'where':{'championId':%@},'include':'clientRel','limit':50000}", championId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

#pragma mark - Purchase Process

+ (void)sendPaymentRequestWithData:(nonnull NSMutableDictionary *)data
                      SuccessBlock:(nullable void (^)(NSData * _Nonnull data, NSURLResponse * _Nonnull response)) successBlock
                       failedBlock:(nullable void (^)(NSError * _Nonnull error)) failedBlock
{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:@"http://185.105.186.68:4010/api/PaymentGatewayImplementationServiceBinding/PaymentRequest"]];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPBody:[APIManager convertNSDictionaryToNSData:data]];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error)
            failedBlock(error);
        else
            successBlock(data, response);
    }] resume];
}

#pragma mark - Fetches Process

+ (void)fetchEstimatesOfUserWithUserIdentifier:(nonnull NSString *)userId
                                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/%@/estimates", userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchPackageInfoWithPackageIdentifier:(nonnull NSString *)packageId
                                 SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"packages/%@", packageId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchChoicesWithUserIdentifier:(nonnull NSString *)userId
                       ExactIdentifier:(nonnull NSString *)exactId
                           SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"choices?filter={'where':{'and'[{'exactId':%@},{'clientId':%@}]},'limit':50000}", exactId, userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchUserInfoWithUserIdentifier:(nonnull NSString *)userId
                           SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/%@", userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllLeaguesWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"leagues"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllTeamsWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                          failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"teams"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllPlayersWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"players"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllCoachesWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"coaches"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllNotificationsWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"notifications"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllPackagesWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                             failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"packages?filter={'where':{'status':'Working'},'limit':50000}"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchAllUsersWithSuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                          failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients?filter={'skip':'6','limit':50000},'fields':{'email': false,'time': false,'phoneNumber': false,'emailVerified': false,'trophyModel': false,'teamId': false,'referralModel': false,'checkpointModel': true,'emps': false,'status': false,'profilePath': false,'accountInfoModel': true,'username': true,'fullname': true,'id': true}"];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchChampionsOfUserWithUserIdentifier:(nonnull NSString *)userId
                                  SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                   failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/%@/champions", userId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchUsersOfTeamWithTeamIdentifier:(nonnull NSString *)teamId
                              SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                               failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"teams/%@/clients", teamId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchNextObjectArrayForUserIdentifier:(nonnull NSString *)userId
                             LeagueIdentifier:(nonnull NSString *)leagueId
                                 SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                                  failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri = [NSString stringWithFormat:@"clients/%@/nextObject/%@", userId, leagueId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

+ (void)fetchExactsWithLeagueIdentifier:(nonnull NSString *)leagueId
                           SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                            failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    NSString *uri;
    if ([leagueId isEqualToString:@"every"])
        uri = [NSString stringWithFormat:@"exacts?filter={'where':{'and'[{'status':'Working'}]},'limit':50000}"];
    else
        uri = [NSString stringWithFormat:@"exacts?filter={'where':{'and'[{'status':'Working'},{'clientId':%@}]},'limit':50000}", leagueId];
    uri = [APIManager appendAccessToken:uri];
    [[RestAPI sharedService] getMethodWithQueryString:uri Parameters:nil Progress:nil SuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successBlock(task, responseObject);
    } failedBlock:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        failedBlock(task, error);
    }];
}

@end
