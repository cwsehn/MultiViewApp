//
//  ViewController.m
//  Algorhythm
//
//  Created by Chris William Sehnert on 6/15/17.
//  Copyright © 2017 InSehnDesigns. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        Playlist *playlist = [[Playlist alloc]initWithIndex: index];
        
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"ShowPlaylistDetail"]){
        
        // this is the sender object retrieved from the "gesture" action....
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            
            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
            playlistDetailController.playlist = [[Playlist alloc]initWithIndex:index];
        }
    }
}

// This method is the "gesture" action fired by tapping on "sender" object....
- (IBAction)showPlaylistsDetail:(id)sender {
    [self performSegueWithIdentifier:@"ShowPlaylistDetail" sender:sender];
}


@end






















