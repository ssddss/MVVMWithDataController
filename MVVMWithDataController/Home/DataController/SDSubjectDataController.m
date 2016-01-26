//
//  SDSubjectDataController.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDSubjectDataController.h"

@implementation SDSubjectDataController
- (void)requestAllSubjectsWithCallback:(SDDataCallback)callback {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 9; i++) {
        SDSubject *subject = [[SDSubject alloc]init];
        subject.subjectId = [NSString stringWithFormat:@"%d",i];
        subject.subjectName = [NSString stringWithFormat:@"English - %d",i];
        [arr addObject:subject];
    }
    
    self.openSubjectsWithCurrentPhase = arr;
    
    callback(nil,arr);
}
@end
