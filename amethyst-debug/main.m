//
//  main.m
//  amethyst-debug
//
//  Created by Ian Ynda-Hummel on 9/29/13.
//  Copyright (c) 2013 Ian Ynda-Hummel. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AMDebugOutput.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        AMDebugOutput *debugOutput = [[AMDebugOutput alloc] init];
        [debugOutput outputDebugData];
    }
    return 0;
}

