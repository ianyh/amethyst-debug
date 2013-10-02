//
//  AMDebugOutput.m
//  amethyst-debug
//
//  Created by Ian Ynda-Hummel on 9/30/13.
//  Copyright (c) 2013 Ian Ynda-Hummel. All rights reserved.
//

#import "AMDebugOutput.h"

@implementation AMDebugOutput

- (void)outputDebugData {
    for (NSRunningApplication *runningApplication in NSWorkspace.sharedWorkspace.runningApplications) {
        SIApplication *application = [SIApplication applicationWithRunningApplication:runningApplication];
        NSLog(@"%@ (%@)", application.title, runningApplication.bundleIdentifier);
        NSLog(@"       pid: \t%d", runningApplication.processIdentifier);
        NSLog(@"     agent: \t%d", runningApplication.isAgent);
        NSLog(@"manageable: \t%d", runningApplication.isManageable);
        NSLog(@"   windows:");
        for (SIWindow *window in application.windows) {
            NSLog(@"\t%@", window);
        }
    }
}

@end
