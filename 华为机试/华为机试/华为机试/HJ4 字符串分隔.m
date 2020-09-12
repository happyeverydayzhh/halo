//
//  HJ4 字符串分隔.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/22.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ4 字符串分隔.h"

@implementation HJ4______

+ (void)strDivide{
    //https://www.nowcoder.com/practice/d9162298cb5a437aad722fccccaae8a7?tpId=37&rp=1&ru=%2Fta%2Fhuawei&qru=%2Fta%2Fhuawei%2Fquestion-ranking
    /*
     题目描述
     •连续输入字符串，请按长度为8拆分每个字符串后输出到新的字符串数组；
     •长度不是8整数倍的字符串请在后面补数字0，空字符串不处理。
     输入描述:
     连续输入字符串(输入2次,每个字符串长度小于100)

     输出描述:
     输出到长度为8的新字符串数组

     示例1
     输入

     abc
     123456789
     输出

     abc00000
     12345678
     90000000

     */
    int cnt = 0;
    char data;
    
    for (data = getchar(); data > 0; data = getchar()) {
        cnt ++;
        
        if (data == '\n' && cnt <= 8) {
            if (cnt != 1) {
                for (int i = 9 - cnt; i > 0; i --) {
                    putchar('0');
                }
                putchar('\n');
            }
            cnt = 0;
        } else if (cnt >=8) {
            cnt = 0;
            putchar(data);
            putchar('\n');
        } else {
            putchar(data);
        }
    }
}

+ (void)strDivideBy8char {
    char str1[256] = {0};
    char str2[256] = {0};
    
    gets(str1);
    gets(str2);
    
    _outputNewString(str1);
    _outputNewString(str2);
}

void _outputNewString(char *str){
    int len,left;
    
    len = (int)strlen(str);
    //最后几个不足8位的字符
    left = len%8;
    
    //最后几个字符后面补0
    if(left > 0) {
        for(int i = 8 - left; i > 0; i --) {
            str[len ++] = '0';
        }
    }
    
    //打印补0之后的字符串，每八个字符为一行
    for (int i = 0; i < len; i ++) {
        printf("%c", str[i]);
        if ((i + 1)%8 == 0) {
            printf("\n");
        }
    }
}

@end
