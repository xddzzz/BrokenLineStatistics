//
//  HLWaveChart.h
//  BrokenLineStatistics
//
//  Created by HL on 16/8/8.
//  Copyright © 2016年 HL. All rights reserved.
//

#import "HLChart.h"

typedef NS_ENUM(NSInteger,HLWaveChartType){
    
    HLWaveChartUpType = 0,
    HLWaveChartUpAndDownType
    
};

@interface HLWaveChart : HLChart




/*         X轴刻度数据          */
@property (nonatomic,strong) NSArray * xLineDataArr;


/*         值数据数组          */
@property (nonatomic,strong) NSArray * valueDataArr;


@property (nonatomic,strong) UIColor * xAndYLineColor;
-(instancetype)initWithFrame:(CGRect)frame andType:(HLWaveChartType)waveChartType;



@end
