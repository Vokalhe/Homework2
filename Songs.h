//
//  Songs.h
//  Lesson2
//
//  Created by Admin on 26.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SongProtocol <NSObject>
@required

-(void) play;

@end


@interface Songs : NSObject <SongProtocol>
@property NSString *name;
@property NSString *text;
@property NSString *artists;

-(instancetype) initWithName: (NSString*)name andText : (NSString*)text andArtists : (NSString*)artists;



@end

