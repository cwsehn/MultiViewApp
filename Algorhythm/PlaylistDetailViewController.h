//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Chris William Sehnert on 6/15/17.
//  Copyright © 2017 InSehnDesigns. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist;  // note: "forward declaration" ...rather than importing "Playlist.h"...


@interface PlaylistDetailViewController : UIViewController

@property (strong, nonatomic) Playlist *playlist;

@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;





@end
