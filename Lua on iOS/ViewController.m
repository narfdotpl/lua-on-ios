//
//  ViewController.m
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import "ViewController.h"
#import "LuaManager.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // create a manager
    LuaManager *m = [[LuaManager alloc] init];

    // run sth simple
    [m runCodeFromString:@"print(2 + 2)"];

    // maintain state
    [m runCodeFromString:@"x = 0"];
    [m runCodeFromString:@"print(x + 1)"];
}

@end
