//
//  ViewController.m
//  BrokenLineStatistics
//
//  Created by 李恒 on 16/8/8.
//  Copyright © 2016年 HL. All rights reserved.
//

#define k_MainBoundsWidth [UIScreen mainScreen].bounds.size.width
#define k_MainBoundsHeight [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "HLChartHeader.h"

@interface ViewController ()
{
    HLLineChart *lineChart;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *cleanButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cleanButton.frame = CGRectMake(20,30,k_MainBoundsWidth-40,30);
    [cleanButton setTitle:@"清除统计图" forState:UIControlStateNormal];
    [cleanButton addTarget:self action:@selector(cleanButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cleanButton];
    
    
    UIButton *showFirstQuardrantButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showFirstQuardrantButton.frame = CGRectMake(20,70,(k_MainBoundsWidth-60)/2,30);
    [showFirstQuardrantButton setTitle:@"第一象限" forState:UIControlStateNormal];
    [showFirstQuardrantButton addTarget:self action:@selector(showFirstQuardrantButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showFirstQuardrantButton];
    
    
    UIButton *showFirstAndSecondQuardrantButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showFirstAndSecondQuardrantButton.frame = CGRectMake(20+(k_MainBoundsWidth-60)/2+20,70,(k_MainBoundsWidth-60)/2,30);
    [showFirstAndSecondQuardrantButton setTitle:@"一二象限" forState:UIControlStateNormal];
    [showFirstAndSecondQuardrantButton addTarget:self action:@selector(showFirstAndSecondQuardrantClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showFirstAndSecondQuardrantButton];
    
    UIButton *showFirstAndFouthQuardrantButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showFirstAndFouthQuardrantButton.frame = CGRectMake(20,120,(k_MainBoundsWidth-60)/2,30);
    [showFirstAndFouthQuardrantButton setTitle:@"一四象限" forState:UIControlStateNormal];
    [showFirstAndFouthQuardrantButton addTarget:self action:@selector(showFirstAndFouthQuardrantButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showFirstAndFouthQuardrantButton];
    
    UIButton *showAllQuardrantButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showAllQuardrantButton.frame = CGRectMake(20+(k_MainBoundsWidth-60)/2+20,120,(k_MainBoundsWidth-60)/2,30);
    [showAllQuardrantButton setTitle:@"四个象限" forState:UIControlStateNormal];
    [showAllQuardrantButton addTarget:self action:@selector(showAllQuardrantButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showAllQuardrantButton];
    
    
    
}

#pragma mark ----第一象限折线图
- (void)showFirstQuardrantButtonClick
{
    [self showFirstQuardrant];
}
- (void)showFirstQuardrant{
    lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
    
    /* X轴的刻度值 可以传入NSString或NSNumber类型  并且数据结构随折线图类型变化而变化 详情看文档或其他象限X轴数据源示例*/
    lineChart.xLineDataArr = @[@"0",@"1",@"2",@3,@4,@5,@6,@7];
    
    /* 折线图的不同类型  按照象限划分 不同象限对应不同X轴刻度数据源和不同的值数据源 */
    lineChart.lineChartQuadrantType = HLLineChartQuadrantTypeFirstQuardrant;
    
    /* 数据源 */
    lineChart.valueArr = @[@[@"1",@"2",@"1",@6,@4,@9,@6,@7]];
    
    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    /* 坐标点的虚线颜色 */
    lineChart.positionLineColorArr = @[[UIColor blueColor],[UIColor greenColor]];
    
    [self.view addSubview:lineChart];
    
    [lineChart showAnimation];
    
}


#pragma mark ----第一二象限折线图
- (void)showFirstAndSecondQuardrantClick
{
    [self showFirstAndSecondQuardrant];
}
- (void)showFirstAndSecondQuardrant{
    lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
    lineChart.xLineDataArr = @[@[@"-3",@"-2",@"-1"],@[@0,@1,@2,@3]];
    lineChart.lineChartQuadrantType = HLLineChartQuadrantTypeFirstAndSecondQuardrant;
    lineChart.valueArr = @[@[@"5",@"2",@"7",@4,@25,@15,@6],@[@"1",@"2",@"1",@6,@4,@9,@7]];
    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    [self.view addSubview:lineChart];
    
    [lineChart showAnimation];
    
}

#pragma mark ----第一四象限折线图
- (void)showFirstAndFouthQuardrantButtonClick
{
    [self showFirstAndFouthQuardrant];
}
- (void)showFirstAndFouthQuardrant{
    lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
    lineChart.xLineDataArr = @[@"0",@"1",@"2",@3,@4,@5,@6,@7];
    lineChart.lineChartQuadrantType = HLLineChartQuadrantTypeFirstAndFouthQuardrant;
    lineChart.valueArr = @[@[@"5",@"-22",@"7",@(-4),@25,@15,@6,@9],@[@"1",@"-12",@"1",@6,@4,@(-8),@6,@7]];
    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    [self.view addSubview:lineChart];
    [lineChart showAnimation];
}
#pragma mark ----四个象限折线图
- (void)showAllQuardrantButtonClick
{
    [self showAllQuardrant];
}
- (void)showAllQuardrant{
    
    lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
    
    lineChart.xLineDataArr = @[@[@"-3",@"-2",@"-1"],@[@0,@1,@2,@3]];
    lineChart.lineChartQuadrantType = HLLineChartQuadrantTypeAllQuardrant;
    lineChart.valueArr = @[@[@"5",@"-22",@"7",@(-4),@25,@15,@6,@9],@[@"1",@"-12",@"1",@6,@4,@(-8),@6,@7]];    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    [self.view addSubview:lineChart];
    [lineChart showAnimation];
}

- (void)cleanButtonClick
{
    //依次遍历self.view中的所有子视图
    for(id tmpView in [self.view subviews])
    {
        //找到要删除的子视图的对象
        if([tmpView isKindOfClass:[lineChart class]])
        {
            
            [lineChart removeFromSuperview]; //删除子视图
            
        }
    }

}

- (void)showWaveChartUpView{
    
    HLWaveChart *wave = [[HLWaveChart alloc] initWithFrame:CGRectMake(10, 100, k_MainBoundsWidth-20, 200) andType:HLWaveChartUpType];
    
    wave.valueDataArr = @[@[@1,@3,@1,@7,@18,@3,@5]];
    
    [self.view addSubview:wave];
    
}


@end
