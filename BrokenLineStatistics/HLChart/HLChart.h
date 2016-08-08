//
//  HLChart.h
//  BrokenLineStatistics
//
//  Created by 李恒 on 16/8/8.
//  Copyright © 2016年 HL. All rights reserved.
//


/*******************************************
 *
 *
 *
 *   自定义图表绘制 包括折线图 柱状图 饼状图等等
 *
 *
 *
 ********************************************/

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define P_M(x,y) CGPointMake(x, y)

@interface HLChart : UIView


/*              图表视图与view的边界值                  */
@property (nonatomic,assign) UIEdgeInsets  contentInsets;



@property (assign, nonatomic)  CGPoint chartOrigin;

- (void)showAnimation;
- (void)clear;

- (void)drawLineWithContext:(CGContextRef )context andStarPoint:(CGPoint )start andEndPoint:(CGPoint)end andIsDottedLine:(BOOL)isDotted andColor:(UIColor *)color;

- (void)drawText:(NSString *)text andContext:(CGContextRef )context atPoint:(CGPoint )rect WithColor:(UIColor *)color;

- (CGFloat)getTextWithWhenDrawWithText:(NSString *)text;
@end
