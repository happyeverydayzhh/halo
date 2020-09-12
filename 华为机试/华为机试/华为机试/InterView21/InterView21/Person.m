//
//  Person.m
//  InterView21
//
//  Created by xiaoZuDeMeng on 2020/9/1.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize lastName = _lastName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lastName = @"";
        NSLog(@"类名和方法名： %s(在第%d行)，描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([self class]));
        NSLog(@"------> %@", [self className]);
        NSLog(@"类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, self.lastName);
    }
    return self;
}

-(void)setLastName:(NSString *)lastName{
    NSLog(@"类名与方法名： %s (在第%d行), 描述： %@", __PRETTY_FUNCTION__, __LINE__, @"根本不会调用这个方法");
    _lastName = @"炎黄";
}

@end
