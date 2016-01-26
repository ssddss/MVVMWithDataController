//
//  SDHomeDataController.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDataController.h"
@class SDSubject;

@interface SDHomeDataController : BaseDataController
@property (nonatomic, strong ,nonnull,readonly) NSArray<SDSubject *> *openSubjects;
- (void)requestSubjectDataWithCallback:(nonnull SDCompletionCallback)callback;
@end
