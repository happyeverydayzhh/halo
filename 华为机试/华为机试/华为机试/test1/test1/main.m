//
//  main.m
//  test1
//
//  Created by xiaoZuDeMeng on 2020/8/30.
//  Copyright © 2020 ZH. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int M,N = 0;
        int str[1000] = {0};
        
        scanf("%d", &M);
        for (int i = 0; i < M; i ++) {
            scanf("%d", &str[i]);
        }
        scanf("%d", &N);
        
        for (int i = 0; i < M; i ++) {
            for (int j = i + 1; j < M; j ++) {
                if (str[i] > str[j]) {
                    int t = str[i];
                    str[i] = str[j];
                    str[j] = t;
                }
            }
        }
        
        int max[1000] = {0};
        int min[1000] = {0};
        for (int i = 0; i < N; i ++) {
            max[i] = str[M - i];
        }
        if (str[N - 1] >= str[M - 1 - (N - 1)]) {
            return -1;
        }
        
        int sum = 0;
        for (int i = 0; i < N; i ++) {
            sum += str[i];
            sum += str[M - 1 - i];
        }
        
        printf("%d", sum);
    }
    return 0;
}



/*
 char str[1997];  //车位最大为999，间隔，个数为998，所以数组为1997
 char *p = gets(str);
 printf("%s\n", str);
 int cntS = 0;
 int cntM = 0;
 int cntX = 0;
 int ones = 0;
 
 while (*p != '\0') {
     if (*p == '1') {
         ones ++;
     } else if(*p == '0') {
         cntX += ones/3;
         cntM += (ones%3)/2;
         cntS += (ones%3)%2;
         ones = 0;
     }
     p ++;
 }
 
 if (ones != 0) {
     cntX += ones/3;
     cntM += (ones%3)/2;
     cntS += (ones%3)%2;
     ones = 0;
 }
 printf("%d", cntS + cntM + cntX);
 */
