//
//  KHLoadingView.h
//  KHLoadingView
//
//  Created by Kristoffer Hellkvist on 2013-05-30.
//  Copyright (c) 2013 Kristoffer Hellkvist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KHLoadingView : UIView

//Use these to add a KHLoadingView to the specified view
- (id)initWithView:(UIView *)view;
- (id)initWithWindow:(UIWindow *)window;

//Hides ANY KHLoadingViews existing in specified view
+(void)hideLoadingViewForView:(UIView*)view;
+(void)hideLoadingViewForView:(UIView*)view withDelay:(NSTimeInterval)delay;

@end
