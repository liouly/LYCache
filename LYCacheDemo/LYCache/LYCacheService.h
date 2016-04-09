//
//  LYCacheManager.h
//  jianzhimao_enterprise
//
//  Created by 林liouly on 15/12/23.
//  Copyright © 2015年 joiway. All rights reserved.
//
/**
 *  @author joiway_liouly
 *
 *  @brief  缓存业务类
 *
 */

#import <Foundation/Foundation.h>
#import "LYCache.h"
#import "LYCacheObj.h"

@interface LYCacheService : NSObject

+(instancetype)instance;

///缓存工具
@property (nonatomic,strong) LYCache *lyCache;

///设置缓存容量
-(void)setCacheTotalCostLimit:(NSInteger)totalCostLimit;

///设置缓存数量
-(void)setCacheCountLimit:(NSInteger)countLimit;

///写入缓存数据
-(void)writeCacheWithObj:(id)obj forKey:(NSString *)key;

-(void)writeCacheWithObj:(id)obj forKey:(NSString *)key cachePolicy:(LYCachePolicy)cachePolicy cacheTime:(NSTimeInterval)cacheTime;

///根据key获取数据，返回一个aClass类型的对象
-(id)readCacheWithObjClass:(Class)aClass key:(NSString *)key cachePolicy:(LYCachePolicy)cachePolicy;

///移除缓存数据
-(void)removeCacheForKey:(NSString *)key fromDisk:(BOOL)fromDisk;



@end
