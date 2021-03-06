//
//  YJNSURLSession.m
//  YJFoundation
//
//  HomePage:https://github.com/937447974/YJCocoa
//  YJ技术支持群:557445088
//
//  Created by 阳君 on 2016/11/29.
//  Copyright © 2016年 YJCocoa. All rights reserved.
//

#import "YJNSURLSession.h"

@implementation YJNSURLSession

+ (void)resumeAllNeedTask {
    NSArray *allEffectiveTask = [self allEffectiveTask];
    for (YJNSURLSessionTask *task in allEffectiveTask) {
        if (task.needResume && task.request.supportResume && task.request.source) {
#if DEBUG
            NSLog(@"%@重发网络请求>>>>>>>>>>>>>>>", task.request.identifier);
#endif
            [task resume];
        }
    }
}

+ (NSArray *)allEffectiveTask {
    NSMutableDictionary *sPool = YJNSURLSessionPoolS;
    NSMutableArray *allEffectiveTask = [NSMutableArray arrayWithCapacity:sPool.count];
    for (YJNSURLSessionTask *task in sPool.allValues) {
        YJNSURLRequest *request = task.request;
        request.source ? [allEffectiveTask addObject:task] : [sPool removeObjectForKey:request.identifier];
    }    
    return allEffectiveTask;
}

@end
