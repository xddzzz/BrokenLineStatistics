# BrokenLineStatistics/**
*  初始化方法
*
*  @param frame         frame
*  @param lineChartType 折线图类型
*  /*每一个存在的X点都有一个y坐标对应,此时valueArr的对象类型为数值,只有一个象限*/
*  HLChartLineEveryValueForEveryX=0,
*  /*点的坐标不一定和坐标轴上的X数值一一对应,此时valueArr的对象类型为点*/
*  HLChartLineValueNotForEveryX
*
*  @return 自定义折线图
*/
		-(instancetype)initWithFrame:(CGRect)frame andLineChartType:(HLLineChartType)lineChartType;

#param mark ---- 必选属性
  
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

#param mark ---- 非必选属性

		/*         是否需要点          */
		@property (assign, nonatomic) BOOL hasPoint;







#pragma mark ----第一象限折线图（调用示例）

		- (void)showFirstQuardrant
		{
			HLLineChart *lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];

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

#pragma mark ----第一二象限折线图（调用示例）


		- (void)showFirstAndSecondQuardrant
		{
			HLLineChart *lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
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

#pragma mark ----第一四象限折线图（调用示例）


		- (void)showFirstAndFouthQuardrant
		{
			HLLineChart *lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];
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
#pragma mark ----四个象限折线图（调用示例）


		- (void)showAllQuardrant
		{

			HLLineChart *lineChart = [[HLLineChart alloc] initWithFrame:CGRectMake(10,300,k_MainBoundsWidth-20,300) andLineChartType:HLChartLineValueNotForEveryX];

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


