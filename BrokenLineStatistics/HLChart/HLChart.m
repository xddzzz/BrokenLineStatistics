//
//  HLChart.m
//  BrokenLineStatistics
//
//  Created by 李恒 on 16/8/8.
//  Copyright © 2016年 HL. All rights reserved.
//

#import "HLChart.h"
@interface HLChart()



@end
@implementation HLChart


-(void)showAnimation
{
    
}


-(void)clear
{
    
}


/**
 *  绘制线段
 *
 *  @param context  图形绘制上下文
 *  @param start    起点
 *  @param end      终点
 *  @param isDotted 是否是虚线
 *  @param color    线段颜色
 */
- (void)drawLineWithContext:(CGContextRef )context andStarPoint:(CGPoint )start andEndPoint:(CGPoint)end andIsDottedLine:(BOOL)isDotted andColor:(UIColor *)color{
    
    
    //    移动到点
    CGContextMoveToPoint(context, start.x, start.y);
    //    连接到
    CGContextAddLineToPoint(context, end.x, end.y);
    
    
    CGContextSetLineWidth(context, 0.5);
    
    
    [color setStroke];
    
    if (isDotted) {
        double ss[] = {0.5,2};
        
        CGContextSetLineDash(context, 0, ss, 2);
    }
    
    
    CGContextDrawPath(context, kCGPathFillStroke);
}


/**
 *  绘制文字
 *
 *  @param text    文字内容
 *  @param context 图形绘制上下文
 *  @param rect    绘制点
 *  @param color   绘制颜色
 */
- (void)drawText:(NSString *)text andContext:(CGContextRef )context atPoint:(CGPoint )rect WithColor:(UIColor *)color{
    //     CGContextSetLineWidth(context, 0.5);
    [[NSString stringWithFormat:@"%@",text] drawAtPoint:rect withAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"CourierNewPSMT" size:14.f],NSForegroundColorAttributeName:color}];
    //    CGContextSetFontSize(context, 13);
    
    //    [color setStroke];
    [color setFill];
    CGContextSetTextDrawingMode(context, kCGTextFillStroke);
    CGContextDrawPath(context, kCGPathFill);
    
}

/**
 *  判断文本宽度
 *
 *  @param text 文本内容
 *
 *  @return 文本宽度
 */
- (CGFloat)getTextWithWhenDrawWithText:(NSString *)text{
    
    CGSize size = [[NSString stringWithFormat:@"%@",text] boundingRectWithSize:CGSizeMake(100, 15) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.f]} context:nil].size;
    
    return size.width;
}

@end
