//
//  HJ13句子逆序.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/28.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ13句子逆序.h"

@implementation HJ13____

+ (void)sentenceReversee {
    /*
     题目描述
     将一个英文语句以单词为单位逆序排放。例如“I am a boy”，逆序排放后为“boy a am I”
     所有单词之间用一个空格隔开，语句中除了英文字母外，不再包含其他字符


     接口说明

     **
      * 反转句子
      *
      * @param sentence 原句子
      * @return 反转后的句子
      *
     public String reverse(String sentence);
      

     输入描述:
     将一个英文语句以单词为单位逆序排放。

     输出描述:
     得到逆序的句子

     示例1
     输入
     I am a boy
     
     输出
     boy a am I
     */
    
    char input[1000] = {'\0'};
    int idx;
    gets(input);
    int len = (int)strlen(input);
    idx = len;
    for (int i = len; i > -1; i --) {
        if (input[i] == ' ') {
            for (int j = i + 1; j < idx; j ++) {
                printf("%c", input[j]);
            }
            printf("%c", ' ');
            idx = i;
        }
        
        if (i == 0) {
            for (int j = i; j < idx; j ++) {
                printf("%c", input[j]);
            }
        }
    }
}

@end
