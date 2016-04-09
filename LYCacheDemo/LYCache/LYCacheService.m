//
//  LYCacheManager.m
//  jianzhimao_enterprise
//
//  Created by 林liouly on 15/12/23.
//  Copyright © 2015年 joiway. All rights reserved.
//

#import "LYCacheService.h"
#import "LYCacheUtils.h"

static LYCacheService *_instance = nil;


@interface LYCacheService()

@end

@implementation LYCacheService


//+(instancetype)instance
//{
//    static dispatch_once_t once;
//    dispatch_once(&once, ^{
//        _instance = [[LYCacheService alloc]init];
//    });
//    return _instance;
//}
//
//-(LYCache *)lyCache
//{
//    LYCache *cache = [LYCache instance];
//    [cache setCacheTotalCostLimit:CAPACITY_DEFAULT_CACHE_10M];
//    
//    return cache;
//}
//
/////设置缓存容量
//-(void)setCacheTotalCostLimit:(NSInteger)totalCostLimit
//{
//    [self.lyCache setCacheTotalCostLimit:totalCostLimit];
//}
//
/////设置缓存数量
//-(void)setCacheCountLimit:(NSInteger)countLimit
//{
//    [self.lyCache setCacheCountLimit:countLimit];
//}
//
/////写入缓存数据
//-(void)writeCacheWithObj:(id)obj forKey:(NSString *)key
//{
//    LYCacheObj *cacheModel = [LYCacheObj initWithCacheObj:obj cachePolicy:LYCachePolicyDefault cacheTime:TIME_DEFAULT_CACHE_0];
//    
//    NSDictionary *cacheDic = [cacheModel mj_keyValues];
//    NSData *cacheData = [cacheDic mj_JSONData];
//    
//    [self.lyCache write:cacheData forKey:key];
//    
//}
//
/////写入缓存数据
//-(void)writeCacheWithObj:(id)obj forKey:(NSString *)key cachePolicy:(LYCachePolicy)cachePolicy cacheTime:(NSTimeInterval)cacheTime
//{
//    LYCacheObj *cacheModel = [LYCacheObj initWithCacheObj:obj cachePolicy:cachePolicy cacheTime:cacheTime];
//    
//    NSDictionary *cacheDic = [cacheModel mj_keyValues];
//    NSData *cacheData = [cacheDic mj_JSONData];
//    
//    [self.lyCache write:cacheData forKey:key];
//    
//}
//
/////移除缓存数据
//-(void)removeCacheForKey:(NSString *)key fromDisk:(BOOL)fromDisk
//{
//    ///移除缓存数据
//    [self.lyCache removeCacheForKey:key fromDisk:fromDisk];
//    
//}
//
/////根据key获取数据，返回一个aClass类型的对象
//-(id)readCacheWithObjClass:(Class)aClass key:(NSString *)key cachePolicy:(LYCachePolicy)cachePolicy
//{
//    NSData *data = [self.lyCache readForKey:key];
//    
//    NSDictionary *dictionary = nil;
//    
//    id obj = nil;
//    
//    if (data) {
//        
//        dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//        
//    }
//    
//    if (dictionary) {
//        
//        LYCacheObj *model = [LYCacheObj mj_objectWithKeyValues:dictionary];
//        
//        switch (cachePolicy) {
//            case LYCachePolicyRevalidatingCacheData:
//            case LYCachePolicyReturnCacheDataElseLoad: {
//                
//                ///有缓存就使用
//                NSDictionary *cacheDic = [model.cacheData mj_JSONObject];
//                
//                obj = [aClass mj_objectWithKeyValues:cacheDic];
//                
//                break;
//            }
//            case LYCachePolicyTimeCacheData: {
//                
//                ///有时效性的缓存，设置了此策略，则缓存根据缓存时间而定，过期了则移除旧缓存
//                NSDate *date = [LYCacheUtils ly_dateFromDateString:model.saveDate];
//                
//                NSDate *currentDate = [LYCacheUtils ly_currentDateForGMT];
//                
//                if ([currentDate timeIntervalSinceDate:date]<model.cacheTime) {
//                    
//                    NSDictionary *cacheDic = [model.cacheData mj_JSONObject];
//                    
//                    obj = [aClass mj_objectWithKeyValues:cacheDic];
//                    
//                }else{
//                    
//                    [self removeCacheForKey:key fromDisk:YES];
//                    
//                }
//                
//                break;
//            }
//            default: {
//                break;
//            }
//        }
//
//    }
//    
//    return obj;
//    
//}

@end
