//
//  SDHomeSubjectsViewModel.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SDSubject.h"
@class SDHomeSubjectsCollectionCellViewModel;

@interface SDHomeSubjectsViewModel : NSObject
@property (nonnull, strong, nonatomic) NSArray<SDHomeSubjectsCollectionCellViewModel *> *cellViewModels;
@property (nonatomic, strong, nonnull) UIColor *backgroundColor;
+ (nonnull SDHomeSubjectsViewModel *)viewModelWithSubjects:(nonnull NSArray<SDSubject *> *)subjects;
@end
