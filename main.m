//
//  main.m
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artists.h"
#import "Group.h"
#import "Songs.h"
#import "NSArray+Utility.h"


int main(int argc, const char * argv[]) {
 @autoreleasepool {
 //Create 4 songs with 2 artists
     Songs *songs1 = [[Songs alloc] init];
     [songs1 setName:@"America"];
     [songs1 setArtists:@"Till Lindemann"];
     [songs1 setText:@"We all live in America."];
     Songs *songs2 = [[Songs alloc] init];
     [songs2 setName:@"Moskau"];
     [songs2 setArtists:@"Till Lindemann"];
     [songs2 setText:@"Diese Stadt ist eine Dirne"];
     
     Songs *songs3 = [[Songs alloc] init];
     [songs3 setName:@"The Ballad of the fight"];
     [songs3 setArtists:@"Vladimir Vysotsky"];
     [songs3 setText:@"Amid oplyvshih candles and evening prayers"];
     Songs *songs4 = [[Songs alloc] init];
     [songs4 setName:@"Oh, how we wish"];
     [songs4 setArtists:@"Vladimir Vysotsky"];
     [songs4 setText:@"Here's your ticket, that's your car."];

    
 //create 2 artists
 Artists *artists1 = [[Artists alloc] init];
 artists1.name = @"Till Lindemann";
 artists1.listOfSongs = [NSMutableArray arrayWithCapacity:2];
 [artists1.listOfSongs addObject : songs1];
 [artists1.listOfSongs addObject : songs2];
     
 Artists *artists2 = [[Artists alloc] init];
 artists2.name = @"Vladimir Vysotsky";
 artists2.listOfSongs = [NSMutableArray arrayWithCapacity:2];
 [artists2.listOfSongs addObject : songs3];
 [artists2.listOfSongs addObject : songs4];
 
 NSArray* artists = [[NSArray alloc] initWithObjects : artists1, artists2, nil];
    NSLog([artists prettyView]);
 

 
 //Create 4 artists
 Artists *artists3 = [[Artists alloc] init];
 artists3.name = @"Till Lindemann";
     
 Artists *artists4 = [[Artists alloc] init];
 artists4.name = @"Richard Kruspe";
     
 Artists *artists5 = [[Artists alloc] init];
 artists5.name = @"Shura";
     
 Artists *artists6 = [[Artists alloc] init];
 artists6.name = @"Leva";
     
 //Create 4 songs
     Songs *songs5 = [[Songs alloc] init];
     [songs5 setName:@"America"];
     [songs5 setArtists:@"Till Lindemann"];
     [songs5 setText:@"We all live in America."];
     Songs *songs6 = [[Songs alloc] init];
     [songs6 setName:@"Moskau"];
     [songs6 setArtists:@"Till Lindemann"];
     [songs6 setText:@"Diese Stadt ist eine Dirne"];
     
     Songs *songs7 = [[Songs alloc] init];
     [songs7 setName:@"My Rock and Roll"];
     [songs7 setArtists:@"Shura"];
     [songs7 setText:@"And that was a fair copy"];
     Songs *songs8 = [[Songs alloc] init];
     [songs8 setName:@"She is"];
     [songs8 setArtists:@"Leva"];
     [songs8 setText:@"not one of those people I know"];
 
 //Create 2 groups
 Group *group1 = [[Group alloc] initWithArtists : artists3 : artists4 andSongs : songs5 : songs6 andName : @"Rammstein"];
 Group *group2 = [[Group alloc] initWithArtists : artists5 : artists6 andSongs : songs7 : songs8 andName : @"B2"];
 
 NSArray* groups = [[NSArray alloc] initWithObjects : group1, group2, nil];
     NSLog([groups prettyView]);
     [songs1 play];
 
 }
 return 0;
 }
