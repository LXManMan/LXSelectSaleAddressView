
//
//  LXSelectSaleAreaView.m
//  LXMVVMDemo
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "LXSelectSaleAreaView.h"

#import "NCAreaTotalModel.h"
#import "NCAreaCityModel.h"
#import "NCAreaAreaModel.h"
typedef void (^selectBlock) (NCAddressAreaModel *addressModel);
@interface LXSelectSaleAreaView()<UIPickerViewDataSource,UIPickerViewDelegate>
@property(nonatomic,strong)UIPickerView *pickView;
@property(nonatomic,strong)UIFont *font;
@property(nonatomic,copy)selectBlock selectBlock;
@property (strong, nonatomic) NSArray *cityArray;
@property (strong, nonatomic) NSArray *townArray;
@property(nonatomic,strong)NCAreaTotalModel *selectModel;
@property(nonatomic,strong)NCAddressAreaModel *addressModel;

@end

@implementation LXSelectSaleAreaView
-(void)setProvinceA:(NSArray *)provinceA{
    _provinceA = provinceA;
    
    [self.pickView reloadAllComponents];
}

-(instancetype)initWithFrame:(CGRect)frame font:(UIFont *)font selectBlock:(void (^)(NCAddressAreaModel *))selectBlock{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.font  = font;
        self.selectBlock = selectBlock;
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
        [self setBaseView];
    }
    return self;

}
- (void)setBaseView {
    CGFloat height = self.frame.size.height;
    CGFloat width = self.frame.size.width;
    UIColor *color = [UIColor colorWithRed:242/255.0 green:243/255.0 blue:249/255.0 alpha:1];
    UIColor *btnColor = [UIColor brownColor];
    UIView *selectView = [[UIView alloc] initWithFrame:CGRectMake(0, height - 220, width, 40)];
    selectView.backgroundColor = color;
    UIButton *cancleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [cancleBtn setTitle:@"取消" forState:0];
    cancleBtn.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    [cancleBtn setTitleColor:btnColor forState:0];
    cancleBtn.frame = CGRectMake(0, 0, 60, 40);
    [cancleBtn addTarget:self action:@selector(dateCancleAction) forControlEvents:UIControlEventTouchUpInside];
    [selectView addSubview:cancleBtn];
    
    UIButton *ensureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [ensureBtn setTitle:@"确定" forState:0];
    ensureBtn.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    
    [ensureBtn setTitleColor:btnColor forState:0];
    ensureBtn.frame = CGRectMake(width - 60, 0, 60, 40);
    [ensureBtn addTarget:self action:@selector(dateEnsureAction) forControlEvents:UIControlEventTouchUpInside];
    [selectView addSubview:ensureBtn];
    [self addSubview:selectView];
    
    self.pickView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, height - 180 , width,  180)];
    self.pickView.delegate   = self;
    self.pickView.dataSource = self;
    self.pickView.backgroundColor = color;
    [self addSubview:self.pickView];
    [self.pickView reloadAllComponents];
    
    
}
- (void)dateCancleAction {
    
    
    [self setHidden:YES];
    
}
- (void)dateEnsureAction {
   
    if (self.selectBlock) {
        self.selectBlock(self.addressModel);
        [self setHidden:YES];
    }
    
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel* pickerLabel = (UILabel*)view;
    if (!pickerLabel){
        pickerLabel = [[UILabel alloc] init];
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        pickerLabel.textAlignment = NSTextAlignmentCenter;
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        [pickerLabel setFont:self.font?:[UIFont boldSystemFontOfSize:14]];
    }
    pickerLabel.text = [self pickerView:pickerView titleForRow:row forComponent:component];
    return pickerLabel;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 40;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if (component == 0) {
        return self.provinceA.count;
    } else if (component == 1) {
        return self.cityArray.count;
    } else {
        return self.townArray.count;
    }
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0) {
        NCAreaTotalModel *model1 =self.provinceA[row];
        
        return model1.name;
        
    } else if (component == 1) {
        
        NCAreaCityModel *model2 =self.cityArray[row];
        return model2.name;
        
    } else {
        
        NCAreaAreaModel *model3 = self.townArray[row];
        return model3.name;
    }
}
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    return Device_Width / 3;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        
        self.selectModel = self.provinceA[row];
        
        self.cityArray = self.selectModel.city;
        
        
        
        NCAreaCityModel *cityModel= self.cityArray[0];
        
        self.townArray = cityModel.area;
        [pickerView reloadComponent:1];
        [pickerView selectedRowInComponent:1];
        [pickerView reloadComponent:2];
        [pickerView selectedRowInComponent:2];
    }
    if (component == 1) {
        
        NCAreaCityModel *cityModel= self.cityArray[row];
        
        self.townArray = cityModel.area;
        [pickerView reloadComponent:2];
        [pickerView selectedRowInComponent:2];
    }
    if (component == 2) {
        [pickerView reloadComponent:2];
        [pickerView selectedRowInComponent:2];
    }
    [self updateAddress];
}
- (void)updateAddress {
    
    NCAreaTotalModel *provinceModel = [self.provinceA objectAtIndex:[self.pickView selectedRowInComponent:0]];
    NCAreaCityModel *cityModel = [self.cityArray objectAtIndex:[self.pickView selectedRowInComponent:1]];
    NCAreaAreaModel *areaModel= [self.townArray objectAtIndex:[self.pickView selectedRowInComponent:2]];
    
    
    self.addressModel.oneLevelSaleAreaId = provinceModel.ID;
    self.addressModel.oneLevelSaleAreaName = provinceModel.name;
    self.addressModel.twoLevelSaleAreaId = cityModel.ID;
    self.addressModel.twoLevelSaleAreaName = cityModel.name;
    self.addressModel.threeLevelSaleAreaId = areaModel.ID;
    self.addressModel.threeLevelSaleAreaName = areaModel.name;
    
    
}
-(NCAddressAreaModel *)addressModel{
    if (!_addressModel) {
        _addressModel =[[NCAddressAreaModel alloc]init];
    }
    return _addressModel;
}


@end
