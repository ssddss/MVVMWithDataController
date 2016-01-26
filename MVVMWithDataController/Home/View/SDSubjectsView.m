//
//  SDSubjectsView.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDSubjectsView.h"
#import "SDHomeSubjectsViewModel.h"
#import "SDHomeSubjectsCollectionCellViewModel.h"
@interface SDSubjectsView()
@property (nonatomic, strong, nullable) SDHomeSubjectsViewModel *viewModel;

@end
@implementation SDSubjectsView
- (void)bindDataWithViewModel:(SDHomeSubjectsViewModel *)viewModel {
    NSLog(@"vm bind数据到 view");
    self.viewModel = viewModel;
    self.backgroundColor = viewModel.backgroundColor;
    
    int i = 0;
    for (SDHomeSubjectsCollectionCellViewModel *cellModel in viewModel.cellViewModels) {
        UIButton *newView = [UIButton buttonWithType:UIButtonTypeCustom];
        newView.tag = i;
        [newView setFrame:CGRectMake(0, i*35 + 15, 105, 30)];
        [newView setTitle:cellModel.title forState:UIControlStateNormal];
        [newView setTitleColor:cellModel.titleColor forState:UIControlStateNormal];
        i++;
        newView.backgroundColor = cellModel.backgroundColor;
        [newView addTarget:self action:@selector(tapOnButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:newView];

    }
}
- (void)tapOnButton:(UIButton *)button {
    [self.delegate homeSubjectsView:self didPressItemAtIndex:button.tag];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
