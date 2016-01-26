//
//  SDHomeSubjectsCollectionCellViewModel.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDHomeSubjectsCollectionCellViewModel.h"
@implementation SDHomeSubjectsCollectionCellViewModel
+ (SDHomeSubjectsCollectionCellViewModel *)viewModelWithSubject:(SDSubject *)subject {
    SDHomeSubjectsCollectionCellViewModel *viewModel = [[SDHomeSubjectsCollectionCellViewModel alloc]init];
    viewModel.title = subject.subjectName;
    if ([subject.subjectId integerValue] %2 == 0) {
        viewModel.backgroundColor = [UIColor redColor];
        viewModel.titleColor = [UIColor whiteColor];
    }
    else {
        viewModel.backgroundColor = [UIColor purpleColor];
        viewModel.titleColor = [UIColor blueColor];
    }
    return viewModel;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"name=%@",self.title];
}
@end
