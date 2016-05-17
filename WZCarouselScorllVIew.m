//
//  CarouselScorllVIew.m
//  app28
//
//  Created by wangzhao on 16/5/13.
//  Copyright © 2016年 Shangji Online (Beijing) Network Technology Co., Ltd. All rights reserved.
//

#import "CarouselScorllVIew.h"

@implementation CarouselScorllVIew

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.pagingEnabled = YES;
        self.showsHorizontalScrollIndicator = NO;
        [self.layer setShadowPath:[UIBezierPath bezierPathWithRect:self.bounds].CGPath];
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowRadius:0.8];
        [self.layer setShadowOpacity:0.8];
        [self.layer setShadowColor:[COLOR(0, 0, 0, 0.2) CGColor]];
        
    }
    return self;
}

- (void)addPageView
{
    if(_page){
        
    }else{
    //创建一个PageControl
    _page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.frame.size.height - 7, self.frame.size.width, 5)];
    _page.backgroundColor = [UIColor clearColor];
    _page.numberOfPages = _arry.count;
    _page.pageIndicatorTintColor = [UIColor whiteColor];
    _page.currentPage = 0;
    _page.currentPageIndicatorTintColor = [UIColor redColor];
    }
}

- (void)turnPage
{
    int page = _page.currentPage; // 获取当前的page
    [self scrollRectToVisible:CGRectMake(self.frame.size.width *page,0,self.frame.size.width, _high) animated:YES]; // 触摸pagecontroller那个点点 往后翻一页 +1
}

// 定时器 绑定的方法
- (void)runTimePage
{
    
    if(_page){
        
        int onepage = _page.currentPage; // 获取当前的page
        onepage++;
        onepage = onepage > (_arry.count-1) ? 0 : onepage ;
        _page.currentPage = onepage;
        [self turnPage];
    }
}

- (void)runTime
{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(runTimePage) userInfo:nil repeats:YES];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
