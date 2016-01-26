//
//  ViewController.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDHomeViewController.h"
#import "Masonry.h"
#import "SDBannerView.h"
#import "SDPersonalInfoView.h"
#import "SDSubjectsView.h"
#import "SDHomeDataController.h"
#import "SDHomeSubjectsViewModel.h"
@interface SDHomeViewController ()<SDHomeSubjectsViewDelegate>
@property (nonatomic, strong, nullable) UIScrollView *scrollView;/**<  容器*/
@property (nonatomic, strong, nullable) UIView *contentView;/**< 内容*/
@property (nonatomic, strong, nullable) SDBannerView *bannerView;/**< 顶部*/
@property (nonatomic, strong, nullable) SDPersonalInfoView *infoView;/**< 中间*/
@property (nonatomic, strong, nullable) SDSubjectsView *subjectsView;/**< 底部*/

@property (nonatomic, strong, nonnull) SDHomeDataController *dataController;/**< 数据获取*/
@end

@implementation SDHomeViewController
#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpContentView];
    
    [self fetchSubjectData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - delegates
#pragma mark - SDHomeSubjectsViewDelegate
- (void)homeSubjectsView:(SDSubjectsView *)subjectView didPressItemAtIndex:(NSInteger)index {
    NSLog(@"%ld",(long)index);
    NSLog(@"%@",subjectView.viewModel.cellViewModels[index]);
}
#pragma mark - Notifications

#pragma mark - event response 

#pragma mark - private methods
- (void)setUpContentView {
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:self.contentView];
    [self.contentView addSubview:self.bannerView];
    [self.contentView addSubview:self.infoView];
    [self.contentView addSubview:self.subjectsView];
    
    [self layoutPageSubviews];
}
- (void)layoutPageSubviews {
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView.mas_width);
    }];
    [self.bannerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.and.right.equalTo(self.contentView);
        make.height.equalTo(@150);
    }];
    
    [self.infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bannerView.mas_bottom);
        make.left.and.right.equalTo(self.contentView);
        make.height.equalTo(@100);
    }];
    
    [self.subjectsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.infoView.mas_bottom);
        make.left.and.right.equalTo(self.contentView);
        make.height.equalTo(@450);
    }];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.subjectsView.mas_bottom);
    }];
}
- (void)fetchSubjectData {
   __weak  typeof(self) weakSelf = self;
    [self.dataController requestSubjectDataWithCallback:^(NSError * _Nullable error) {
        __strong typeof(self) strongSelf = weakSelf;
        if (!error) {
            [strongSelf renderSubjectView];
        }
    }];
}
- (void)renderSubjectView {
    SDHomeSubjectsViewModel *subjectsViewModel = [SDHomeSubjectsViewModel viewModelWithSubjects:self.dataController.openSubjects];
    [self.subjectsView bindDataWithViewModel:subjectsViewModel];
}
#pragma mark - getters and setters
- (UIView *)contentView {
    if (!_contentView) {
        _contentView = [UIView new];
    }
    return _contentView;
}
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [UIScrollView new];
    }
    return _scrollView;
}
- (SDBannerView *)bannerView {
    if (!_bannerView) {
        _bannerView = [SDBannerView new];
        _bannerView.backgroundColor = [UIColor purpleColor];
    }
    return _bannerView;
}
- (SDPersonalInfoView *)infoView {
    if (!_infoView) {
        _infoView = [SDPersonalInfoView new];
        _infoView.backgroundColor = [UIColor greenColor];
    }
    return _infoView;
}
- (SDSubjectsView *)subjectsView {
    if (!_subjectsView) {
        _subjectsView = [SDSubjectsView new];
        _subjectsView.delegate = self;
        _subjectsView.backgroundColor = [UIColor blueColor];
    }
    return _subjectsView;
}
- (SDHomeDataController *)dataController {
    if (!_dataController) {
        _dataController = [[SDHomeDataController alloc]init];
    }
    return _dataController;
}
@end
