//
//  Group.m
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "Group.h"

@implementation Group

- (instancetype)initWithArtists : (Artists*)artists1 : (Artists*)artists2 andSongs : (Songs*)songs1 :
            (Songs*)songs2 andName : (NSString*) name;{

 self = [super init];
    if(!self) return nil;
    
 self.listOfArtists = [[NSMutableArray alloc] init];
 [_listOfArtists addObject : artists1];
 [_listOfArtists addObject : artists2];
    
 self.listOfSongs = [[NSMutableArray alloc] init];
 [self.listOfSongs addObject : songs1]; //_listOfSongs addObject :song1;
 [self.listOfSongs addObject : songs2];
  
 self.name = name;

 
  
  return self;
 }


@end
