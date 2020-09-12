//
//  HJ8合并表记录.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/27.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ8合并表记录.h"

@implementation HJ8_____

/*
 https://www.nowcoder.com/practice/de044e89123f4a7482bd2b214a685201?tpId=37&&tqId=21231&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
 
 题目描述
 数据表记录包含表索引和数值（int范围的整数），请对表索引相同的记录进行合并，即将相同索引的数值进行求和运算，输出按照key值升序进行输出。

 输入描述:
 先输入键值对的个数
 然后输入成对的index和value值，以空格隔开

 输出描述:
 输出合并后的键值对（多行）

 示例1
 输入
 4
 0 1
 0 2
 1 2
 3 4
 输出
 0 3
 1 2
 3 4
 */

+ (void)mergeTheSameIndexValue {
    int num;
    
    while (scanf("%d", &num) != EOF) {
        int idx, value = 0;
        int array[1000] = {0};
        for (int i = 0; i < num; i ++) {
            scanf("%d  %d", &idx, &value);
            array[idx] += value;
        }
        
        for (int i = 0; i < 1000; i ++) {
            if (array[i] != 0) {
                printf("%d   %d\n", i, array[i]);
            }
        }
    }
}

@end
