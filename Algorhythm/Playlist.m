//
//  Playlist.m
//  Algorhythm
//
//  Created by Chris William Sehnert on 6/15/17.
//  Copyright © 2017 InSehnDesigns. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex: (NSUInteger)index
{
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        
        _playlistTitle = [playlistDictionary objectForKey: kTitle];
        _playlistDescription = [playlistDictionary objectForKey: kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey: kIcon];
        _playlistIcon = [UIImage imageNamed: iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey: kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed: largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray: [playlistDictionary objectForKey: kArtists]];
        
        NSDictionary *colorDict = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDict];
        
    }
    return self;
}


// Helper Method...

- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    
    CGFloat redKey = [[colorDictionary objectForKey: @"red"] doubleValue];
    CGFloat blueKey = [[colorDictionary objectForKey: @"blue"] doubleValue];
    CGFloat greenKey = [[colorDictionary objectForKey: @"green"] doubleValue];
    CGFloat alphaKey = [[colorDictionary objectForKey: @"alpha"] doubleValue];
    
    UIColor *background = [UIColor colorWithRed: redKey/255.0 green:greenKey/255.0 blue:blueKey/255.0 alpha:alphaKey];
    
    return background;
}


@end


/*
    The result of creating the MusicLibrary and Playlist classes in this way is
        code that is more organized, flexible and readable...now an individual 
        dictionary object from the "hard-coded" NSArray in MusicLibrary can be 
        accessed with an index number provided at instantiation of a playlist...
 
            ex. Playlist *newPlist = Playlist(index: 1);
 
    The individual elements of the "playlistDictionary" are then accesible through 
        property dot notation......
 
            ex. NSString *title = newPlist.kTitle;
 
*/










