//
//  ViewController.m
//  Algorhythm
//
//  Created by Chris William Sehnert on 6/15/17.
//  Copyright © 2017 InSehnDesigns. All rights reserved.
//

#import "PlaylistMasterViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
    
    [self.aButton setTintColor:[UIColor redColor]];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.view.backgroundColor = [UIColor orangeColor];
    
    
}

@end
