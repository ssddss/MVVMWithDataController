//
//  SDSubject.m
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "SDSubject.h"

@implementation SDSubject
- (NSString *)description {
    return [NSString stringWithFormat:@"id=%@,name=%@",self.subjectId,self.subjectName];
}
@end
