# RMDashLine
画虚线

本项目选择两种方法实现虚线的画法

1. RMDashLineView ：drawRect UIBezierPath画虚线

2. RMDashLineLayerView ：通过Layer层画虚线

调用方法
与正常view创建方法一致
1. RMDashLineView
RMDashLineView *line1 = [[RMDashLineView alloc]initWithFrame:CGRectMake(0, 100, APP_SCREEN_WIDTH, 1)];
[self.view addSubview:line1];

2. RMDashLineLayerView 
RMDashLineLayerView *line4 = [[RMDashLineLayerView alloc]initWithFrame:CGRectMake(300, 0, 1, APP_SCREEN_HEIGHT)];
[self.view addSubview:line4];
