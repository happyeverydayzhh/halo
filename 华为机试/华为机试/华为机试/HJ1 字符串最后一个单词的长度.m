//
//  HJ1 字符串最后一个单词的长度.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/22.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ1 字符串最后一个单词的长度.h"

@implementation HJ1_____________

+ (void)lastLength{
//https://www.nowcoder.com/practice/8c949ea5f36f422594b306a2300315da?tpId=37&rp=1&ru=%2Fta%2Fhuawei&qru=%2Fta%2Fhuawei%2Fquestion-ranking
    /*
     题目描述
     计算字符串最后一个单词的长度，单词以空格隔开。
     输入描述:
     一行字符串，非空，长度小于5000。

     输出描述:
     整数N，最后一个单词的长度。

     示例1
     输入
     hello world
     输出
     5
     */
    char str[5000];
    char *p = str;
    int cnt = 0;
    gets(str);
    
    while (*p != '\0') {
        if (*p == ' ') {
            cnt = 0;
        } else {
            cnt ++;
        }
        p ++;
    }
    printf("%d", cnt);
}

@end
