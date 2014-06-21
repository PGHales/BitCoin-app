//
//  NetworkController.m
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (AFHTTPSessionManager *)api {
    
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://apicoin.io/api/v1/"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
        
    });
    return api;
}

@end
