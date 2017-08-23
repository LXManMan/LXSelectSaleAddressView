//
//  NCAddressAreaModel.h
//  LXMVVMDemo
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NCAddressAreaModel : NSObject
/** 一级销售区域 */

@property(nonatomic,strong)NSString *oneLevelSaleAreaId;

/**一级销售区域名字 */
@property(nonatomic,strong)NSString *oneLevelSaleAreaName;

/** 二级销售区域 */

@property(nonatomic,strong)NSString *twoLevelSaleAreaId;


/**二级销售区域名字 */
@property(nonatomic,strong)NSString *twoLevelSaleAreaName;


/** 三级销售区域 */

@property(nonatomic,strong)NSString *threeLevelSaleAreaId;


/**三级销售区域名字 */
@property(nonatomic,strong)NSString *threeLevelSaleAreaName;

@end
