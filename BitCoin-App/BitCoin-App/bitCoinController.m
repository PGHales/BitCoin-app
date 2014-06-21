//
//  bitCoinController.m
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "bitCoinController.h"
#import "NetworkController.h"

@implementation bitCoinController

+ (bitCoinController *)sharedInstance {
    
    static bitCoinController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [bitCoinController new];
    });
    return sharedInstance;
}

- (void)getBitCoinData:(NSString *)nameString completion:(void (^)(BOOL))completion {
    
    
    }

@end
