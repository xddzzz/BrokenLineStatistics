//
//  HLLineChart.h
//  HLChartDemo
//
//  Created by 李恒 on 16/8/8.
//  Copyright © 2016年 HL. All rights reserved.
//
/*******************************************
 *
 *
 *
 *折线图 按象限分为4种
 *
 *
 *
 ********************************************/
#import <UIKit/UIKit.h>
#import "HLChart.h"

/*         折线图数值类型          */
typedef  NS_ENUM(NSInteger,HLLineChartType){
    /*     每一个存在的X点都有一个y坐标对应   此时valueArr的对象类型为数值   只有一个象限   */
    HLChartLineEveryValueForEveryX=0,
    
    /*     点的坐标不一定和坐标轴上的X数值一一对应   此时valueArr的对象类型为点       */
    HLChartLineValueNotForEveryX
    

};



/*        折线图象限分布类型           */
typedef NS_ENUM(NSInteger,HLLineChartQuadrantType){
    
    /*         折线图分布于第一象限          */
    HLLineChartQuadrantTypeFirstQuardrant,
    
    /*         折线图分布于第一二象限          */
    HLLineChartQuadrantTypeFirstAndSecondQuardrant,
    
    /*         折线图分布于第一四象限          */
    HLLineChartQuadrantTypeFirstAndFouthQuardrant,
    
    /*         折线图分布于全局四个象限          */
    HLLineChartQuadrantTypeAllQuardrant
    
    
};



/****************************华丽的分割线***********************************/



@interface HLLineChart :HLChart

/*         折线图的X轴刻度数据 建议使用NSNumber或数字的字符串化                */
@property (nonatomic,strong) NSArray * xLineDataArr;


/*         折线图的Y轴刻度数据 同上                */
@property (nonatomic,strong) NSArray * yLineDataArr;


/*         折线图的点坐标数组 不同类型对应不同数据源  参考上面HLLineChartType       */
@property (nonatomic,strong) NSArray * valueArr;


/*         折线图类型          */
@property (assign , nonatomic) HLLineChartType  lineType ;


/*         折线图象限类型          */
@property (assign, nonatomic) HLLineChartQuadrantType  lineChartQuadrantType;


/*         线条宽度          */
@property (assign, nonatomic) CGFloat lineWidth;


/*         数值线条颜色          */
@property (nonatomic,strong) NSArray * valueLineColorArr;


/*         x y轴线条颜色          */
@property (nonatomic,strong) UIColor * xAndYLineColor;


/*         点的颜色          */
@property (nonatomic,strong) NSArray * pointColorArr;


/*         x,y轴刻度值颜色          */
@property (nonatomic,strong) UIColor * xAndYNumberColor;


/*         点的引导虚线颜色          */
@property (nonatomic,strong) NSArray * positionLineColorArr;


/*         坐标点数值颜色          */
@property (nonatomic,strong) NSArray * pointNumberColorArr;

/*         是否需要点          */
@property (assign, nonatomic) BOOL hasPoint;



/**
 *  初始化方法
 *
 *  @param frame         frame
 *  @param lineChartType 折线图类型
 *
 *  @return 自定义折线图
 */
-(instancetype)initWithFrame:(CGRect)frame andLineChartType:(HLLineChartType)lineChartType;



@end
