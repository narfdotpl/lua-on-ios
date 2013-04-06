//
//  LuaManager.m
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import "LuaManager.h"

#define to_cString(s) ([s cStringUsingEncoding:[NSString defaultCStringEncoding]])


@implementation LuaManager

- (lua_State *)state {
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    lua_settop(L, 0);

    return L;
}

- (void)runCodeFromString:(NSString *)code {
    // get state
    lua_State *L = self.state;

    // compile
    int error = luaL_loadstring(L, to_cString(code));
    if (error) {
        luaL_error(L, "cannot compile Lua code: %s", lua_tostring(L, -1));
        return;
    }

    // run
    error = lua_pcall(L, 0, 0, 0);
    if (error) {
        luaL_error(L, "cannot run Lua code: %s", lua_tostring(L, -1));
        return;
    }
}

@end
