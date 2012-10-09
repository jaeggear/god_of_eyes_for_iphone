//
//  glModelController.h
//  heaven.novel
//
//  Created by ヨウスケ on 2012/09/07.
//  Copyright (c) 2012年 Yosuke. All rights reserved.
//

#import <UIKit/UIKit.h>

@class glDataViewController;

@interface glModelController : NSObject <UIPageViewControllerDataSource>

- (glDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(glDataViewController *)viewController;

@end
