//
//  KHLoadingView.m
//  KHLoadingView
//
//  Created by Kristoffer Hellkvist on 2013-05-30.
//  Copyright (c) 2013 Kristoffer Hellkvist. All rights reserved.
//

#import "KHLoadingView.h"

@implementation KHLoadingView

#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self setBackgroundColor:[UIColor colorWithRed:245/255.0f green:245/255.0f blue:245/255.0f alpha:1.0f]];
        //Example just adds LoadingIndicator to Screen:
        UIActivityIndicatorView* activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        activityIndicator.frame = self.frame;
        activityIndicator.center = CGPointMake(activityIndicator.center.x, activityIndicator.center.y -50);
        [self addSubview: activityIndicator];
        [activityIndicator startAnimating];
        
        //Add your own elements here, maybe a UIButton or UILabel
	}
	return self;
}

- (id)initWithView:(UIView *)view {
	NSAssert(view, @"View must not be nil.");
	return [self initWithFrame:view.bounds];
}

- (id)initWithWindow:(UIWindow *)window {
	return [self initWithView:window];
}



+(void)hideLoadingViewForView:(UIView*)view{
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
	for (UIView *subview in subviewsEnum) {
		if ([subview isKindOfClass:self]) {
			[subview removeFromSuperview];
		}
	}
}
+(void)hideLoadingViewForView:(UIView *)view withDelay:(NSTimeInterval)delay{
    int64_t delta = (int64_t)(NSEC_PER_SEC * delay);

    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW,  delta);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [KHLoadingView hideLoadingViewForView:view];
    });
}


@end
