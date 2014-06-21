//
//  NetworkController.h
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;

+ (void)getCurrentPriceWithParameters:(NSDictionary *)parameters;

//- (id)initWithDictionary:(NSDictionary *)dictionary;


@end
