//
//  MVAppDelegate.m
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import "MVAppDelegate.h"

@implementation MVAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.4
                                                      target:self
                                                    selector:@selector(tick)
                                                    userInfo:Nil
                                                     repeats:YES];
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
    [self.timer invalidate];
}

- (void)tick
{
    [self.theView tick];
    [self.theView setNeedsDisplay:true];
}

@end
