//
//  HJ18 识别有效的IP地址和掩码并进行分类统计.m
//  华为机试
//
//  Created by xiaoZuDeMeng on 2020/8/29.
//  Copyright © 2020 ZH. All rights reserved.
//

#import "HJ18 识别有效的IP地址和掩码并进行分类统计.h"

@implementation HJ18______IP____________

+ (void)validIPAddress {
    /*
     https://www.nowcoder.com/practice/de538edd6f7e4bc3a5689723a7435682?tpId=37&&tqId=21241&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
     题目描述
     请解析IP地址和对应的掩码，进行分类识别。要求按照A/B/C/D/E类地址归类，不合法的地址和掩码单独归类。

     所有的IP地址划分为 A,B,C,D,E五类

     A类地址1.0.0.0~126.255.255.255;

     B类地址128.0.0.0~191.255.255.255;

     C类地址192.0.0.0~223.255.255.255;

     D类地址224.0.0.0~239.255.255.255；

     E类地址240.0.0.0~255.255.255.255


     私网IP范围是：

     10.0.0.0～10.255.255.255

     172.16.0.0～172.31.255.255

     192.168.0.0～192.168.255.255


     子网掩码为二进制下前面是连续的1，然后全是0。（例如：255.255.255.32就是一个非法的掩码）
     注意二进制下全是1或者全是0均为非法

     注意：
     1. 类似于【0.*.*.*】和【127.*.*.*】的IP地址不属于上述输入的任意一类，也不属于不合法ip地址，计数时可以忽略
     2. 私有IP地址和A,B,C,D,E类地址是不冲突的

     输入描述:
     多行字符串。每行一个IP地址和掩码，用~隔开。

     输出描述:
     统计A、B、C、D、E、错误IP地址或错误掩码、私有IP的个数，之间以空格隔开。

     示例1
     输入
     10.70.44.68~255.254.255.0
     1.0.0.1~255.0.0.0
     192.168.0.2~255.255.255.0
     19..0.~255.255.255.0
     
     输出
     1 0 1 0 0 2 1
     */
    
    int type_range[8][8] = {
        {  1,  0,  0,  0,126,255,255,255},
        {128,  0,  0,  0,191,255,255,255},
        {192,  0,  0,  0,223,255,255,255},
        {224,  0,  0,  0,239,255,255,255},
        {240,  0,  0,  0,255,255,255,255},
        { 10,  0,  0,  0, 10,255,255,255},
        {172, 16,  0,  0,172, 31,255,255},
        {192,168,  0,  0,192,168,255,255},
    };
    
    int cnt[8] = {0};
    char str[64] = {0};
    int ip[4], mask[4];
    int num;
    unsigned long len;
    int value,err;
    
    while (scanf("%s", str) != EOF) {
        len = strlen(str);
        str[len] = 0;
        num = 0;
        value = -1;
        err = 0;
        for (int i = 0; i <= len; i ++) {
            if (str[i] == '.' || str[i] == '~' || str[i] == 0) {
                if (value == -1) {
                    err = 1;
                    break;
                }
                
                if (num < 4) {
                    ip[num] = value;
                } else {
                    mask[num%4] = value;
                }
                num ++;
                value = -1;
            } else {
                if (value == -1) {
                    value = 0;
                }
                value = value*10 + (str[i] - '0');
            }
        }
        
        if (isCorrect(ip, mask) == 1 || err == 1) {
            cnt[5] ++;
        } else {
            for (int i = 0; i < 5; i ++) {
                cnt[i] += isInclude(ip, type_range[i]);
            }
            
            cnt[6] += isInclude(ip, type_range[5]);
            cnt[6] += isInclude(ip, type_range[6]);
            cnt[6] += isInclude(ip, type_range[7]);
        }
    }
    
    printf("%d %d %d %d %d %d %d", cnt[0], cnt[1], cnt[2], cnt[3], cnt[4], cnt[5], cnt[6]);

}

int isCorrect(int *ip, int *mask) {
    int status;
    
    status = (mask[0] >> 7) & 0x1;
    if (status == 0) {
        return 1;
    }
    
    for (int i = 0; i < 4; i ++) {
        for (int j = 7; j >= 0; j --) {
            if (((mask[i] >> j) & 0x1) != status) {
                if (status == 0) {
                    return 1;;
                } else {
                    status = 0;
                }
            }
        }
    }
    
    if (ip[0] == 0 || ip[0] == 127) {
        return 0;
    }
    
    if (mask[0] == 0 && mask[1] == 0 && mask[2] == 0 && mask[3] == 0) {
        return 1;
    }
    
    if (mask[0] == 255 && mask[1] == 0 && mask[2] == 255 & mask[3] == 255) {
        return 1;;
    }
    
    return 0;
}

int isInclude(int *ip, int *range) {
    if (ip[0] >= range[0] && ip[0] <= range[4] && ip[1] >= range[1] && ip[1] <= range[5]) {
        return 1;
    }
    return 0;
}


@end
