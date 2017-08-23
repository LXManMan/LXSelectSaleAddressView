# LXSelectSaleAddressView
![image](https://github.com/liuxinixn/LXSelectSaleAddressView/blob/master/LXSelectSaleAddressView/%E9%80%89%E6%8B%A9.gif)

初始化方法：
-(instancetype)initWithFrame:(CGRect)frame font:(UIFont *)font selectBlock:(void (^) (NCAddressAreaModel *addressModel))selectBlock;
数据源
@property(nonatomic,strong)NSArray *provinceA;
