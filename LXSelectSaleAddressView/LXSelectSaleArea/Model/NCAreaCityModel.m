//
//  NCAreaCityModel.m
//  LXMVVMDemo
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "NCAreaCityModel.h"

@implementation NCAreaCityModel
+ (NSDictionary *)objectClassInArray{
    
    return @{
             @"area" : @"NCAreaAreaModel",
             
             };
}
+ (NSDictionary *)replacedKeyFromPropertyName{
    
    return @{
             @"ID" : @"id",
             };
}
@end
