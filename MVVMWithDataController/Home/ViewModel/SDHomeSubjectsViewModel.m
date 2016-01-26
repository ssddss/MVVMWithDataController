//
//  SDHomeSubjectsViewModel.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDHomeSubjectsViewModel.h"
#import "SDHomeSubjectsCollectionCellViewModel.h"
@implementation SDHomeSubjectsViewModel
+ (SDHomeSubjectsViewModel *)viewModelWithSubjects:(NSArray<SDSubject *> *)subjects {
    SDHomeSubjectsViewModel *viewModel = [[SDHomeSubjectsViewModel alloc]init];
    viewModel.backgroundColor = [UIColor blackColor];
    NSMutableArray *arr = [NSMutableArray array];
    for (SDSubject *subject in subjects) {
        SDHomeSubjectsCollectionCellViewModel *cellModel = [SDHomeSubjectsCollectionCellViewModel viewModelWithSubject:subject];
        
        [arr addObject:cellModel];
    }
    
    viewModel.cellViewModels = arr;
    
    return viewModel;
}
@end
