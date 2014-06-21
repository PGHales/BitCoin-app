//
//  NetworkController.m
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "NetworkController.h"

static NSString * const API_KEY = @"b5cd79d8130e5afccd39b909632e191a38f0b7348d92f475319573b3012a6c06";
static NSString * const PRIVATE_KEY = @"d19286933ac1ba706053823434a5b0dc3e48642f1b053405aec1facba50d5913";

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

+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters {
    
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    [parametersWithKey setObject:API_KEY forKey:@"api_key"];
    
    return parametersWithKey;
}


@end
