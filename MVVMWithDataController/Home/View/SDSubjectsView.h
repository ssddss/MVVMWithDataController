//
//  SDSubjectsView.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SDSubjectsView;
@class SDHomeSubjectsViewModel;
@protocol SDHomeSubjectsViewDelegate <NSObject>
- (void)homeSubjectsView:(nonnull SDSubjectsView *)subjectView
             didPressItemAtIndex:(NSInteger)index;
@end
@interface SDSubjectsView : UIView
@property (nonatomic, strong, nullable, readonly) SDHomeSubjectsViewModel *viewModel;
@property (nonatomic, weak, nullable) id<SDHomeSubjectsViewDelegate> delegate;
- (void)bindDataWithViewModel:(nonnull SDHomeSubjectsViewModel *)viewModel;
@end
