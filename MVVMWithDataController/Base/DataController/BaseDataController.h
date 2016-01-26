//
//  BaseDataController.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^SDCompletionCallback)( NSError * _Nullable error);
typedef void (^SDDataCallback)( NSError * _Nullable error,id _Nullable data);
@interface BaseDataController : NSObject

@end
