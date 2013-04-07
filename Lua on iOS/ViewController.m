//
//  ViewController.m
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import "ViewController.h"
#import "LuaManager.h"


// let's prefix `lua_CFunctions` with `l_` as in http://www.lua.org/pil/26.1.html
int l_sum(lua_State *L) {
    // get arguments (`int numberOfArguments = lua_gettop(L)`)
    double x = lua_tonumber(L, 1);
    double y = lua_tonumber(L, 2);

    // compute result
    double result = x + y;

    // return one result
    lua_pushnumber(L, result);
    return 1;
}


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

    // run file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"foo" ofType:@"lua"];
    [m runCodeFromFileWithPath:path];

    // call objc function from lua
    [m registerFunction:l_sum withName:@"sum"];
    [m runCodeFromString:@"print(sum(1, 2))"];
}

@end
