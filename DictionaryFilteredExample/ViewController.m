//
//  ViewController.m
//  DictionaryFilteredExample
//
//  Created by 黄震 on 2018/4/13.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+ParaProduct.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

        NSString *para1 = @"生于成";
        NSString *para2 = @"";
        NSString *para3 = @"333";
        NSString *para4 = @"";
        NSString *para5 = @"让发";
        NSNumber *para6 = @(333);
        NSString *para9 = @"";
        NSString *para7 = nil;
        NSString *para8 = @"你好是 ";
    
        NSDictionary *para = FilteredDictionaryOfVariableBindings(para1,para2,para3,para4,para5,para6,para7,para8,para9,nil);
        NSLog(@"%@",para);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
