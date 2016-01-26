//
//  SDSubjectDataController.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "BaseDataController.h"
#import "SDSubject.h"
@interface SDSubjectDataController : BaseDataController
@property (nonatomic, strong) NSArray<SDSubject *> *openSubjectsWithCurrentPhase;
- (void)requestAllSubjectsWithCallback:(SDDataCallback)callback;
@end
