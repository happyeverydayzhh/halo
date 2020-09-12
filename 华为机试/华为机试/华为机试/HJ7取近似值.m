//
//  HJ7取近似值.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/27.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ7取近似值.h"

@implementation HJ7____

/*
 题目描述
 写出一个程序，接受一个正浮点数值，输出该数值的近似整数值。如果小数点后数值大于等于5,向上取整；小于5，则向下取整。

 输入描述:
 输入一个正浮点数值

 输出描述:
 输出该数值的近似整数值

 示例1
 输入
 5.5
 输出
 6
 */

+ (void)opproximateValue {
    float x;

    while (scanf("%f", &x) != EOF) {
        int value = (int)(x + 0.5);
        printf("%d\n", value);
    }
}

@end
