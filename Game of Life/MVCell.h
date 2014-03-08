//
//  MVCell.h
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVCell : NSObject

@property NSRect bounds;
@property int status;

- (void)setBoundsWithX:(int)x andY:(int)y;
- (BOOL)isAlive;

@end
