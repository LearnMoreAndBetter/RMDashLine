//
//  RMDashLineView.m
//  RMDashLine
//
//  Created by 王林 on 2017/5/19.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "RMDashLineView.h"

@implementation RMDashLineView

- (instancetype)initWithFrame:(CGRect)frame{
	if (self = [super initWithFrame:frame]) {
		self.backgroundColor = [UIColor clearColor];
	}
	return self;
}

- (void)drawRect:(CGRect)rect
{
	UIBezierPath *line = [UIBezierPath bezierPath];
	[line moveToPoint:CGPointMake(0, 0)];
	if (CGRectGetWidth(rect) > CGRectGetHeight(rect)) {
		[line addLineToPoint:CGPointMake(CGRectGetWidth(rect), 0)];
	}else{
		[line addLineToPoint:CGPointMake(0, CGRectGetHeight(rect))];
	}
	[[UIColor redColor] setStroke];
	CGFloat lengths[] = {3,3};
	[line setLineDash:lengths count:2 phase:1];
	[line stroke];
}

@end

@implementation RMDashLineLayerView

- (instancetype)initWithFrame:(CGRect)frame{
	if (self = [super initWithFrame:frame]) {
		self.backgroundColor = [UIColor clearColor];
	}
	return self;
}

- (void)layoutSubviews{
	[self drawDashLine];
}

- (void)drawDashLine
{
	CAShapeLayer *shapeLayer = [CAShapeLayer layer];
	[shapeLayer setBounds:self.bounds];
	[shapeLayer setPosition:CGPointMake(CGRectGetWidth(self.frame) / 2, CGRectGetHeight(self.frame)/2)];
	
	[shapeLayer setStrokeColor:[UIColor redColor].CGColor];
	[shapeLayer setLineWidth:0.5];
	//  设置线宽，线间距
	[shapeLayer setLineDashPattern:@[@3,@3]];
	//  设置路径
	CGMutablePathRef path = CGPathCreateMutable();
	CGPathMoveToPoint(path, NULL, 0, 0);
	if (CGRectGetWidth(self.frame) > CGRectGetHeight(self.frame)) {
		CGPathAddLineToPoint(path, NULL, CGRectGetWidth(self.frame),0);
	}else{
		CGPathAddLineToPoint(path, NULL, 0,CGRectGetHeight(self.frame));
	}
	[shapeLayer setPath:path];
	CGPathRelease(path);
	
	//  把绘制好的虚线添加上来
	[self.layer addSublayer:shapeLayer];
}

@end
