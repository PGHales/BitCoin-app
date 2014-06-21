//
//  NetworkController.m
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "NetworkController.h"
#import "BCBitCoin.h"

static NSString * const API_key = @"APICoinIO-Key";
static NSString * const API_Nonce = @"APICoinIO-Nonce";
static NSString * const API_Signature = @"APICoinIO-Signature";

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

+(void)getCurrentPriceWithParameters:(NSDictionary *)parameters{
    
    NSDictionary *dictionary = @{API_key: @"b5cd79d8130e5afccd39b909632e191a38f0b7348d92f475319573b3012a6c06", API_Nonce : @"BitCoin", API_Signature:@"d19286933ac1ba706053823434a5b0dc3e48642f1b053405aec1facba50d5913"};
    
    [[NetworkController api] GET:@"https://apicoin.io/api/v1/" parameters:dictionary success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        completion(nil);
    }];
    
}

@end
