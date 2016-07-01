//
//  YJHttpAssembly.h
//  YJFoundation
//
//  HomePage:https://github.com/937447974/YJCocoa
//  YJ技术支持群:557445088
//
//  Created by 阳君 on 16/6/30.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** http参数组装*/
@interface YJHttpAssembly : NSObject

/**
 *  http组装（只有参数）
 *
 *  @param params 相关参数
 *
 *  @return void
 */
+ (NSString *)assemblyHttp:(NSDictionary *)params;

/**
 *  http组装（链接+参数）
 *
 *  @param http 链接
 *  @param params 相关参数
 *
 *  @return void
 */
+ (NSString *)assemblyHttp:(NSString *)http params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END