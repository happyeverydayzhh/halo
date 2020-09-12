//
//  ZhangPerson.m
//  InterView21
//
//  Created by xiaoZuDeMeng on 2020/9/1.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "ZhangPerson.h"

@implementation ZhangPerson

@synthesize lastName = _lastName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([self class]));
        NSLog(@"类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([super class]));
    }
    return self;
}

- (void)setLastName:(NSString *)lastName{
//设置方法一：如果setter采用是这种方式，就可能引起崩溃
//    if (![lastName isEqualToString:@"张"])
//    {
//        [NSException raise:NSInvalidArgumentException format:@"姓不是张"];
//    }
//    _lastName = lastName;
       
//设置方法二：如果setter采用是这种方式，就可能引起崩溃
    _lastName = @"张";
    NSLog(@"类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, @"会调用这个方法,想一下为什么？");
}

@end
