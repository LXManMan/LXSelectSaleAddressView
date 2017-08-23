//
//  LXSelectSaleAreaView.h
//  LXMVVMDemo
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NCAddressAreaModel.h"
@interface LXSelectSaleAreaView : UIView
-(instancetype)initWithFrame:(CGRect)frame font:(UIFont *)font selectBlock:(void (^) (NCAddressAreaModel *addressModel))selectBlock;
@property(nonatomic,strong)NSArray *provinceA;
@end
