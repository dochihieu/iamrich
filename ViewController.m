//
//  ViewController.m
//  iamrich
//
//  Created by chihieu on 4/2/16.
//  Copyright © 2016 chihieu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *ruby;

@property (weak, nonatomic) IBOutlet UIButton *iamrich;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ruby.alpha = 0;
    self.iamrich.alpha = 0;
    
}


- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:6 animations:^{ self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f" ,self.ruby.alpha);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:6 animations:^{
            self.iamrich.center = CGPointMake(self.iamrich.center.x,100);
            self.iamrich.alpha = 1;
        } completion:nil];
        
    }];
}

@end
