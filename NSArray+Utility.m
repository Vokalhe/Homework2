//
//  NSArray+Utility.m
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "NSArray+Utility.h"

#import "Artists.h"
#import "Songs.h"
#import "Group.h"
@implementation NSArray (Utility)
-(NSString*) prettyView{
 NSMutableString* string = [[NSMutableString alloc] init];
 for(id item in self){
 if([item class] == [Artists class]){
 for(Artists *artists in self){
 [string appendFormat:@"%@ - Artist \n", artists.name];
 [string appendString:@"List of songs: "];
 for(Songs *songs in artists.listOfSongs){
 [string appendFormat:@"\"%@\" ", songs.name];
 }
 [string appendString:@"\n"];
 
 }
 return string;
 }
 
 if([item class] == [Artists class]){
 for(Artists *artists in self){
 [string appendFormat:@"%@ - Artist \n", artists.name];
 [string appendString:@"List of songs: "];
 for(Songs *songs in artists.listOfSongs){
 [string appendFormat:@"\"%@\" ", songs.name];
 }
 [string appendString:@"\n"];
 }
 return string;
 }
 
 if ([item class] == [Group class]){
 for(Group* group in self){
 [string appendFormat:@"%@ - Group \n", group.name];
 [string appendFormat:@"List of Artists ("];
 for(Artists *artists in group.listOfArtists){
 [string appendFormat:@"%@, ", artists.name];
 }
 [string appendString:@") \n"];
 [string appendString:@"List of songs ("];
 for(Songs *songs in group.listOfSongs){
 [string appendFormat:@"\"%@\" ", songs.name];
 }
 [string appendString:@") \n"];
 
 }
 return string;
 }
 }
 return @"Error";
 
 }

@end
