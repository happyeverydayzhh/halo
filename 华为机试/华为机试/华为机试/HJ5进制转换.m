//
//  HJ5进制转换.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/23.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ5进制转换.h"

@implementation HJ5____

//https://www.nowcoder.com/practice/8f3df50d2b9043208c5eed283d1d4da6?tpId=37&rp=1&ru=%2Fta%2Fhuawei&qru=%2Fta%2Fhuawei%2Fquestion-ranking
/*
 题目描述
 写出一个程序，接受一个十六进制的数，输出该数值的十进制表示。（多组同时输入 ）

 输入描述:
 输入一个十六进制的数值字符串。

 输出描述:
 输出该数值的十进制字符串。

 示例1
 输入

 0xA
 输出

 10
 */

+ (void)hexToDecimal{
    int len = 0;
    char hex[64] = {'\0'};
    int temp = 0;
    int number = 0;
    
    while (scanf("%s", hex) != EOF) {
        len = (int)strlen(hex);
        for (int i = 0; i < len; i ++) {
            if ((hex[i] >= 'a') && (hex[i] <= 'f')) {
                number = hex[i] - 'a' + 10;
            } else if ((hex[i] >= 'A') && (hex[i] <= 'F')) {
                number = hex[i] - 'A' + 10;
            } else if ((hex[i] >= '0') && (hex[i] <= '9')) {
                number = hex[i] - '0';
            } else if ((hex[i] == 'x') && (hex[i] == 'X')) {
                continue;
            }
            temp = temp*16 + number;
        }
        printf("%d\n", temp);
        temp = 0;
        number = 0;
    }
    
}


@end
