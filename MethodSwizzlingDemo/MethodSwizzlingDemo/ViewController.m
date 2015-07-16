//
//  ViewController.m
//  MethodSwizzlingDemo
//
//  Created by LeeJunhui on 15/7/16.
//  Copyright (c) 2015年 LeeJunhui. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ljh.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    Method originalMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod  = class_getInstanceMethod([NSString class], @selector(ljh_LowercaseString));
    method_exchangeImplementations(originalMethod, swappedMethod);
    
    NSString *originalString = @"Kobe Bryant is the MVP";
    NSString *lowcaseString = [originalString lowercaseString];
    
}

@end
