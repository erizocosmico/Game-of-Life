//
//  MVGameView.m
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import "MVGameView.h"

@implementation MVGameView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.grid = [[NSMutableArray alloc] init];

        for (int i = 0; i < 140; i++)
        {
            self.grid[i] = [[NSMutableArray alloc] init];

            for (int j = 0; j < 90; j++)
            {
                MVCell* cell = [[MVCell alloc] init];
                [cell setBoundsWithX:(i*5) andY:(j*5)];
                self.grid[i][j] = cell;
            }
        }
        
        for (int k = 25; k < 35; k++)
        {
            for (int l = 30; l < 33; l++)
            {
                MVCell* cell = self.grid[k][l];
                [cell setStatus:1];
            }
        }
    }
    return self;
}

- (void)tick
{
    for (int i = 0; i < 140; i++)
    {
        for (int j = 0; j < 90; j++)
        {
            int liveNeighbours = [self getLiveNeighboursAt:i :j];
            MVCell* cell = self.grid[i][j];
            
            if ([cell isAlive])
            {
                if (liveNeighbours < 2 || liveNeighbours > 3)
                    [cell setStatus:0];
            }
            else
            {
                if (liveNeighbours == 3)
                    [cell setStatus:1];
            }
        }
    }
}

- (int)getLiveNeighboursAt:(int)x :(int)y
{
    int liveNeighbours = 0;
    
    for (int i = x-1; i <= x+1; i++)
    {
        for (int j = y-1; j <= y+1; j++)
        {
            if (i < 0
                || j < 0
                || j >= 90
                || i >= 140
                || (i == x && j == y))
                continue;
            MVCell* cell = self.grid[i][j];
            liveNeighbours += ([cell isAlive] ? 1 : 0);
        }
    }
    
    return liveNeighbours;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor whiteColor] set];
    NSRectFill([self bounds]);
    
    [[NSColor redColor] set];
    for (int i = 0; i < 140; i++)
    {
        for (int j = 0; j < 90; j++)
        {
            if (self.grid[i][j] != nil)
            {
                MVCell* cell = self.grid[i][j];
                if ([cell isAlive]) {
                    NSRectFill([cell bounds]);
                }
            }
        }
    }
}

@end
