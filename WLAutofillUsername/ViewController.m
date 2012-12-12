//
//  ViewController.m
//  WLAutofillUsername
//
//  Created by wilson on 12-12-12.
//  Copyright (c) 2012年 Meitui. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+Username.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    self.usernameTextField.text = [[UIDevice currentDevice] username];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
