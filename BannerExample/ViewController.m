//
//  ViewController.m
//  BannerExample
//
//  Created by Frank G. Fuenmayor G. on 8/30/16.
//  Copyright © 2016 Frank G. Fuenmayor G. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
}

-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    UIView *banner = [[UIView alloc] initWithFrame:CGRectMake(0, navigationController.navigationBar.frame.size.height + 10,
                                                              viewController.view.bounds.size.width, 30)];
    banner.backgroundColor = [UIColor blueColor];
    
    [viewController.view addSubview:banner];
}

@end