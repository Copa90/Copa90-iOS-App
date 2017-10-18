//
//  RestAPI.m
//  Copa90-iOS-App
//
//  Created by Alirëza WJ Arabi on 10/17/17.
//  Copyright © 2017 Alirëza WJ Arabi. All rights reserved.
//

#import "RestAPI.h"
#import "CopaAPIManager.h"
#import "PublicHeaders.h"

@implementation RestAPI

#pragma mark - Shared Instance Singelton

+ (nonnull id)sharedService
{
    static RestAPI* sharedRestService = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedRestService = [self new];
    });
    
    return sharedRestService;
}

#pragma mark - HTTP Methods

- (void)getMethodWithQueryString:(nonnull NSString *)queryString
                      Parameters:(nullable NSObject *)parameters
                        Progress:(nullable void (^)(NSProgress  * _Nullable downloadProgress)) progressBlock
                    SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                     failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    [[CopaAPIManager sharedManager] GET:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]
                                parameters:parameters
                                  progress:^(NSProgress * _Nonnull downloadProgress) {
                                      
                                  } success:^(NSURLSessionDataTask *task, id responseObject) {
                                      successBlock(task, responseObject);
                                  } failure:^(NSURLSessionDataTask *task, NSError *error) {
                                      failedBlock(task, error);
                                  }];
}

- (void)putMethodWithQueryString:(nonnull NSString *)queryString
                      Parameters:(nullable NSObject *)parameters
                    SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                     failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    [[CopaAPIManager sharedManager] PUT:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]
                                parameters:parameters
                                   success:^(NSURLSessionDataTask *task, id responseObject) {
                                       successBlock(task, responseObject);
                                   } failure:^(NSURLSessionDataTask *task, NSError *error) {
                                       failedBlock(task, error);
                                   }];
}

- (void)postMethodWithQueryString:(nonnull NSString *)queryString
                       Parameters:(nullable NSObject *)parameters
                         Progress:(nullable void (^)(NSProgress * _Nullable downloadProgress)) progressBlock
                     SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                      failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    [[CopaAPIManager sharedManager] POST:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]
                                 parameters:parameters
                                   progress:^(NSProgress * _Nonnull downloadProgress) {
                                       
                                   } success:^(NSURLSessionDataTask *task, id responseObject) {
                                       successBlock(task, responseObject);
                                   } failure:^(NSURLSessionDataTask *task, NSError *error) {
                                       failedBlock(task, error);
                                   }];
}

- (void)deleteMethodWithQueryString:(nonnull NSString *)queryString
                         Parameters:(nullable NSObject *)parameters
                       SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, _Nonnull id responseObject)) successBlock
                        failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    [[CopaAPIManager sharedManager] DELETE:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]
                                   parameters:parameters
                                      success:^(NSURLSessionDataTask *task, id responseObject) {
                                          successBlock(task, responseObject);
                                      } failure:^(NSURLSessionDataTask *task, NSError *error) {
                                          failedBlock(task, error);
                                      }];
}

- (void)headMethodWithQueryString:(nonnull NSString *)queryString
                       Parameters:(nullable NSObject *)parameters
                     SuccessBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task)) successBlock
                      failedBlock:(nullable void (^)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error)) failedBlock
{
    [[CopaAPIManager sharedManager] HEAD:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]
                                 parameters:parameters
                                    success:^(NSURLSessionDataTask *task) {
                                        successBlock(task);
                                    } failure:^(NSURLSessionDataTask *task, NSError *error) {
                                        failedBlock(task, error);
                                    }];
}

- (void)downloadMethodWithQueryString:(nonnull NSString *)queryString
                                 Path:(nonnull NSURL *)path
                         SuccessBlock:(nullable void (^)(NSURLResponse * _Nonnull response, NSURL * _Nonnull filePath)) successBlock
                          failedBlock:(nullable void (^)(NSError * _Nonnull error)) failedBlock
{
#ifndef DEBUG
    NSURL *URL = [NSURL URLWithString:[[NSString stringWithFormat:@"http://%@:4000/api/", PRODUCTIONSERVERADDRESS] stringByAppendingString:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]]];
#else
    NSURL *URL = [NSURL URLWithString:[[NSString stringWithFormat:@"http://%@:4000/api/", DEVELOPMENTSERVERADDRESS] stringByAppendingString:[queryString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]]];
#endif
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL * _Nullable(NSURL * _Nullable targetPath, NSURLResponse * _Nullable response) {
        return path;
    } completionHandler:^(NSURLResponse * _Nullable response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        if (error)
            failedBlock(error);
        successBlock(response, filePath);
    }];
    [downloadTask resume];
}

@end
