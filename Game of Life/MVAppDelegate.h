//
//  MVAppDelegate.h
//  Game of Life
//
//  Created by Mike on 08/03/14.
//  Copyright (c) 2014 mvader.me. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MVGameView.h"

@interface MVAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet MVGameView *theView;
@property NSTimer *timer;

@end
