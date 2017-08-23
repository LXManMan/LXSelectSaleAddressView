//
//  NCAreaTotalModel.m
//  LXMVVMDemo
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "NCAreaTotalModel.h"

@implementation NCAreaTotalModel
+ (NSDictionary *)objectClassInArray{
    
    return @{
             @"city" : @"NCAreaCityModel",
             
             };
}
+ (NSDictionary *)replacedKeyFromPropertyName{
    
    return @{
             @"ID" : @"id",
             };
}
@end
