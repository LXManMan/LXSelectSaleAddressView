//
//  ViewController.m
//  LXSelectSaleAddressView
//
//  Created by zhongzhi on 2017/8/23.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LXSelectSaleAreaView.h"
#import "NCAreaTotalModel.h"
@interface ViewController ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)LXSelectSaleAreaView *selectSaleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.label =[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 250, 40)];
    self.label.textColor =[UIColor redColor];
    [self.view addSubview:self.label];
    
    [self.view addSubview:self.selectSaleView];
    
    NSString *url = @"http://119.28.62.27:8080/ytr/LoadAllSaleArea";
    
    NSMutableArray *array = [NSMutableArray array];

    [LBHTTPTool post:url params:nil success:^(id responseObject) {
        NSArray *dataA = responseObject[@"data"];
        for (NSDictionary *dic in dataA) {
            NCAreaTotalModel *model =[NCAreaTotalModel mj_objectWithKeyValues:dic];
            [array addObject:model];
        }
        self.selectSaleView.provinceA = array;
    } failure:^(NSError *error) {
        
    }];
    
    
    

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.selectSaleView setHidden:NO];
}
-(LXSelectSaleAreaView *)selectSaleView{
    if (!_selectSaleView) {
        NCWS(weakSelf);
        _selectSaleView =[[LXSelectSaleAreaView alloc]initWithFrame:CGRectMake(0, 64, Device_Width, Device_Height - 64) font:[UIFont systemFontOfSize:15] selectBlock:^(NCAddressAreaModel *addressModel) {
            
            weakSelf.label.text = [NSString stringWithFormat:@"%@ %@ %@",addressModel.oneLevelSaleAreaName,addressModel.twoLevelSaleAreaName,addressModel.threeLevelSaleAreaName];
        }];
    }
    return _selectSaleView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
