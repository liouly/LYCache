//
//  LYCacheObj.h
//  jianzhimao_enterprise
//
//  Created by 林liouly on 15/12/23.
//  Copyright © 2015年 joiway. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LYCacheDefine.h"

@interface LYCacheObj : NSObject

///保存时间
@property (nonatomic,readonly,strong) NSString *saveDate;

///缓存策略
@property (nonatomic,readonly,assign) LYCachePolicy cachePolicy;

///缓存时长
@property (nonatomic,readonly,assign) NSTimeInterval cacheTime;

///缓存对象，为了方便存储，转为了NSString对象
@property (nonatomic,readonly,strong) NSString *cacheData;

///初始化一个缓存对象
+(instancetype)initWithCacheObj:(id)obj cachePolicy:(LYCachePolicy)cachePolicy cacheTime:(NSTimeInterval)cacheTime;

@end
