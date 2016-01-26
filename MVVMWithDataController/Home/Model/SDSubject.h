//
//  SDSubject.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"
@interface SDSubject : BaseModel
@property (nonatomic, strong, nullable) NSString *subjectId;
@property (nonatomic, strong, nullable) NSString *subjectName;
@end
