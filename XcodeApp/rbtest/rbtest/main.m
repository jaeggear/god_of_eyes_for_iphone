//
//  main.m
//  rbtest
//
//  Created by ヨウスケ on 2012/08/30.
//  Copyright (c) 2012年 Yosuke. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <RubyCocoa/RBRuntime.h>

int main(int argc, char *argv[])
{
    RBApplicationInit("rb_main.rb", argc, argv, nil);
    return NSApplicationMain(argc, argv);
}
