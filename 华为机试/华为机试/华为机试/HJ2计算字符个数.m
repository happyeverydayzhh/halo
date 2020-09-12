//
//  HJ2计算字符个数.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/22.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ2计算字符个数.h"

@implementation HJ2______

//https://www.nowcoder.com/practice/a35ce98431874e3a820dbe4b2d0508b1?tpId=37&&tqId=21225&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking

/*
 题目描述
写出一个程序，接受一个由字母和数字组成的字符串，和一个字符，然后输出输入字符串中含有该字符的个数。不区分大小写。

输入描述:
第一行输入一个有字母和数字以及空格组成的字符串，第二行输入一个字符。

输出描述:
输出输入字符串中含有该字符的个数。
 
 示例1
 输入
 ABCDEF
 A
 
 输出
 1
 */

+ (void)getCount {
    char str[5000];
    char *p = str;
    char a;
    int cnt = 0;
    gets(str);
    scanf("%c", &a);
    
    while (*p != '\0') {
        if(*p == a || *p == a + ('a' - 'A') || *p == a - ('a' - 'A')) {
            cnt ++;
        }
        p ++;
    }
    printf("cnt = %d", cnt);
}


@end
