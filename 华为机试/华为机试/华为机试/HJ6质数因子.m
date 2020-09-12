//
//  HJ6质数因子.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/27.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ6质数因子.h"

@implementation HJ6____

/*
 题目描述
 功能:输入一个正整数，按照从小到大的顺序输出它的所有质因子（重复的也要列举）（如180的质因子为2 2 3 3 5 ）

 最后一个数后面也要有空格

 输入描述:
 输入一个long型整数

 输出描述:
 按照从小到大的顺序输出它的所有质数的因子，以空格隔开。最后一个数后面也要有空格。

 示例1
 输入
 180
 
 输出
 2 2 3 3 5
 */

+ (void)primeNumber {
    int number;
    
    scanf("%d", &number);
    
    for (int i = 2; i <= number; i ++) {
        while (number%i == 0) {
            printf("%d\n", i);
            number /= i;
        }
    }
}

@end
