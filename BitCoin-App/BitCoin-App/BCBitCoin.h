//
//  BCBitCoin.h
//  BitCoin-App
//
//  Created by Mac User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCBitCoin : NSObject


@property (nonatomic, strong) NSString *currentPrice;
@property (nonatomic, strong) NSString *priceDirection;

- (id)initWithDictionary:(NSDictionary *)dictionary;


@end
