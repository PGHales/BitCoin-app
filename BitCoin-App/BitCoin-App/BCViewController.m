//
//  BCViewController.m
//  BitCoin-App
//
//  Created by User on 6/21/14.
//  Copyright (c) 2014 name. All rights reserved.
//

#import "BCViewController.h"
#import "NetworkController.h"

@interface BCViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buyButton;

@end

@implementation BCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UILabel *currentPrice = [[UILabel alloc]initWithFrame:CGRectMake(100, 80, 400, 100)];
    currentPrice.text = @"586.75";
    [self.view addSubview:currentPrice];

    UILabel *currentPriceLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 120, 400, 50)];
    currentPriceLabel.text = @"Current Price";
    [self.view addSubview:currentPriceLabel];
    
    
    [NetworkController getCurrentPriceWithParameters:nil];

    
}

- (IBAction)buyBitcoin:(id)sender {

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
