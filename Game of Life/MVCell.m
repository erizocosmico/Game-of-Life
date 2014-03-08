//
//  MVCell.m
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import "MVCell.h"

@implementation MVCell

@synthesize bounds;
@synthesize status;

- (void)setBoundsWithX:(int)x andY:(int)y
{
    NSRect b = {{x, y}, {5, 5}};
    self.bounds = b;
}

- (BOOL)isAlive
{
    return self.status == 1;
}

@end
