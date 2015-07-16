//
//  NSString+ljh.m
//  MethodSwizzlingDemo
//
//  Created by LeeJunhui on 15/7/16.
//  Copyright (c) 2015年 LeeJunhui. All rights reserved.
//

#import "NSString+ljh.h"

@implementation NSString (ljh)
- (NSString *)ljh_LowercaseString
{
    NSString *lowercaseString = [self ljh_LowercaseString];
    NSLog(@"%@ -> %@",self, lowercaseString);
    return lowercaseString;
}
@end
