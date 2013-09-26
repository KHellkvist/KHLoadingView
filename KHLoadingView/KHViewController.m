//
//  KHViewController.m
//  KHLoadingView
//
//  Created by Kristoffer Hellkvist on 2013-09-26.
//  Copyright (c) 2013 Kristoffer Hellkvist. All rights reserved.
//

#import "KHViewController.h"
#import "KHLoadingView.h"

@interface KHViewController ()

@end

@implementation KHViewController

-(void)viewDidAppear:(BOOL)animated{
    //adds the loadingview to self.view:
    [self.view addSubview:[[KHLoadingView alloc] initWithView:self.view]];
    //Hide KHLoadingView after N seconds
    [KHLoadingView hideLoadingViewForView:self.view withDelay:3];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
