//
//  ViewController.m
//  Algorhythm
//
//  Created by Chris William Sehnert on 6/15/17.
//  Copyright © 2017 InSehnDesigns. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"ShowPlaylistDetail"]){
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
    }
}
    


@end
