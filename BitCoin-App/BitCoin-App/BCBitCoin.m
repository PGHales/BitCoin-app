//
//  BCBitCoin.m
//  BitCoin-App
//
//  Created by Mac User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "BCBitCoin.h"

static NSString * const API_key = @"APICoinIO-Key";
static NSString * const API_Nonce = @"APICoinIO-Nonce";
static NSString * const API_Signature = @"APICoinIO-Signature";

@implementation BCBitCoin

- (id)initWithDictionary:(NSDictionary *)dictionary{
    
    self = [super init];
    if (self) {
       dictionary = @{API_key: @"b5cd79d8130e5afccd39b909632e191a38f0b7348d92f475319573b3012a6c06", API_Nonce : @"BitCoin", API_Signature:@"d19286933ac1ba706053823434a5b0dc3e48642f1b053405aec1facba50d5913"};
    }    
    return self;
}


@end
