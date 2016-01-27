//
//  Group.h
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "Artists.h"
#import "Songs.h"

@interface Group : Artists

@property NSMutableArray *listOfArtists;

- (instancetype)initWithArtists : (Artists*)artists1 : (Artists*)artists2
                   andSongs : (Songs*)songs1 : (Songs*)songs2
                   andName : (NSString*) name;

@end
