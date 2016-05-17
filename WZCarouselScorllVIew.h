//
//  CarouselScorllVIew.h
//  app28
//
//  Created by wangzhao on 16/5/13.
//  Copyright © 2016年 Shangji Online (Beijing) Network Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailsTableViewController.h"

@protocol CarouselScorllVIewDelegate <NSObject>

@optional
- (void)tapAction;

@end

@interface CarouselScorllVIew : UIScrollView

@property(nonatomic,strong) UIPageControl *page;
@property(nonatomic,assign) float high;
@property(nonatomic,strong) NSMutableArray *arry;

- (void)addPageView;
- (void)runTime;

@end
