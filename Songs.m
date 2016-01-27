//
//  Songs.m
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "Songs.h"

@implementation Songs

-(void)play{
    NSLog(@"%@", self.text);
}
-(instancetype) initWithName: (NSString*)name andText : (NSString*)text andArtists : (NSString*)artists{
    self = [super init];
    if (!self) return nil;
    _name = name;
    _text = text;
    _artists = artists;
    return self;
}


@end
