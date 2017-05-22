//
//  ViewController.m
//  RMDashLine
//
//  Created by 王林 on 2017/5/19.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "ViewController.h"
#import "RMDashLineView.h"

#define APP_SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define APP_SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	
	[self addDashLineView];
}

- (void)addDashLineView{
	
	RMDashLineView *line1 = [[RMDashLineView alloc]initWithFrame:CGRectMake(0, 100, APP_SCREEN_WIDTH, 1)];
	[self.view addSubview:line1];

	RMDashLineView *line2 = [[RMDashLineView alloc]initWithFrame:CGRectMake(100, 0, 1, APP_SCREEN_HEIGHT)];
	[self.view addSubview:line2];
	
	RMDashLineView *line3 = [[RMDashLineView alloc]init];
	[self.view addSubview:line3];
	line3.frame = CGRectMake(200, 0, 1, APP_SCREEN_HEIGHT);
	
	
	RMDashLineLayerView *line4 = [[RMDashLineLayerView alloc]initWithFrame:CGRectMake(300, 0, 1, APP_SCREEN_HEIGHT)];
	[self.view addSubview:line4];
	
	RMDashLineLayerView *line5 = [[RMDashLineLayerView alloc]init];
	[self.view addSubview:line5];
	line5.frame = CGRectMake(0, 200, APP_SCREEN_WIDTH, 1);
	
	RMLineView *line6 = [[RMLineView alloc]initWithFrame:CGRectMake(0, 300, APP_SCREEN_WIDTH, 1)];
	[self.view addSubview:line6];
	
	RMBlankView *line7 = [[RMBlankView alloc]initWithFrame:CGRectMake(0, 400, APP_SCREEN_WIDTH, 10)];
	[self.view addSubview:line7];
	
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
