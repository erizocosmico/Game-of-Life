//
//  MVGameView.h
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MVCell.h"

@interface MVGameView : NSView

@property (retain) NSMutableArray *grid;

- (void)drawRect:(NSRect)dirtyRect;
- (void)tick;

@end
