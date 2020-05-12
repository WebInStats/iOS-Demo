//
//  ViewController.m
//  push_inbox_test
//
//  Created by Fatma Selin Hangişi on 12.05.2020.
//  Copyright © 2020 Webinstats. All rights reserved.
//

#import "ViewController.h"
@import iOS_wis;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Webinstats* wiso = [[Webinstats alloc] init:@"//wis.webinstats.com/" :@"__COMPANY_ID__" :@"0"];
    NSMutableDictionary *map = [[NSMutableDictionary alloc] init];
    [map setObject:@"Home" forKey:@"p"];
    [map setObject:@"123" forKey:@"cuid"];
    [map setObject:@"1" forKey:@"_enable_push"];
    [map setObject:@"abc" forKey:@"wistest"];
    [wiso executeWithView:self localmap:map];
    // Do any additional setup after loading the view.
}


@end
