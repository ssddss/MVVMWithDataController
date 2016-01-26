//
//  SDHomeDataController.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDHomeDataController.h"
#import "SDSubjectDataController.h"

@interface SDHomeDataController()
@property (nonatomic, strong, nonnull) SDSubjectDataController *subjectDataController;
@end
@implementation SDHomeDataController
- (void)requestSubjectDataWithCallback:(SDCompletionCallback)callback {
    NSLog(@"开始获取数据");

    SDDataCallback dataCallback = ^(NSError *error,id data) {
        NSLog(@"数据返回成功");
        callback(error);
    };
    
    [self.subjectDataController requestAllSubjectsWithCallback:dataCallback];
}
- (NSArray<SDSubject *> *)openSubjects {
    return self.subjectDataController.openSubjectsWithCurrentPhase ?: @[];
}
- (SDSubjectDataController *)subjectDataController {
    if (!_subjectDataController) {
        _subjectDataController = [[SDSubjectDataController alloc]init];
    }
    return _subjectDataController;
}
@end
