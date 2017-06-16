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




@end
