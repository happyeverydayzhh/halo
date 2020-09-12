//
//  HJ17坐标移动.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/28.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ17坐标移动.h"

@implementation HJ17____

+ (void)coordinateMove {
    /*
     
     https://www.nowcoder.com/practice/119bcca3befb405fbe58abe9c532eb29?tpId=37&&tqId=21240&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
     
     题目描述
     开发一个坐标计算工具， A表示向左移动，D表示向右移动，W表示向上移动，S表示向下移动。从（0,0）点开始移动，从输入字符串里面读取一些坐标，并将最终输入结果输出到输出文件里面。

     输入：

     合法坐标为A(或者D或者W或者S) + 数字（两位以内）

     坐标之间以;分隔。

     非法坐标点需要进行丢弃。如AA10;  A1A;  $%$;  YAD; 等。

     下面是一个简单的例子 如：

     A10;S20;W10;D30;X;A1A;B10A11;;A10;

     处理过程：

     起点（0,0）

     +   A10   =  （-10,0）

     +   S20   =  (-10,-20)

     +   W10  =  (-10,-10)

     +   D30  =  (20,-10)

     +   x    =  无效

     +   A1A   =  无效

     +   B10A11   =  无效

     +  一个空 不影响

     +   A10  =  (10,-10)

     结果 （10， -10）

     注意请处理多组输入输出

     输入描述:
     一行字符串

     输出描述:
     最终坐标，以,分隔

     示例1
     输入
     复制
     A10;S20;W10;D30;X;A1A;B10A11;;A10;
     输出
     复制
     10,-10
     题解 讨论 通过
     */
    
    char *start;
    char *cur;
    char str[1000] = {0};
    
    
//    char *s = "A10;W12;S13;D10";
//
//    char *r = strstr(s, ";");

    while (scanf("%s", str) != EOF) {
        start = str;
        cur = strstr(start, ";");
        char *ss = start;
        int x = 0;
        int y = 0;
        while (cur != NULL) {
            *cur = 0;
            if (*start == 'A') {
                x -= forwardXstep(start);
            } else if(*start == 'D') {
                x += forwardXstep(start);
            } else if (*start == 'W') {
                y += forwardXstep(start);
                printf("WWWWWWWW--------");
            } else if (*start == 'S') {
                y -= forwardXstep(start);
                printf("SSSSSSSS--------");
            }
            start = cur + 1;
            cur = strstr(start, ";");
        }
        printf("%d,%d\n", x, y);
    }
    
}

int forwardXstep(char *p) {
    int value = 0;
    int i = 1;
    
    while (*(p + i)) {
        if(*(p + i) > '9' || *(p + i) < '0') {
            value = 0;
            break;
        }
        value = value * 10 + (*(p + i) - '0');
        i ++;
    }
    return value;
}

@end
