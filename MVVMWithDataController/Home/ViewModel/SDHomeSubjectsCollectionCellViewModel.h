//
//  SDHomeSubjectsCollectionCellViewModel.h
//  MVVMWithDataController
//
//  Created by yurongde on 16/1/26.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SDSubject.h"
@interface SDHomeSubjectsCollectionCellViewModel : NSObject
@property (nonatomic, strong, nonnull) UIImage *image;
@property (nonatomic, strong, nonnull) UIImage *highlightedImage;
@property (nonatomic, strong, nonnull) NSString *title;
@property (nonatomic, strong, nonnull) UIColor *titleColor;
@property (nonatomic, strong, nonnull) UIColor *backgroundColor;
+ (nonnull SDHomeSubjectsCollectionCellViewModel *)viewModelWithSubject:(nonnull
                                                                                  SDSubject *)subject;

@end
