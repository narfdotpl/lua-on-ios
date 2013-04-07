//
//  LuaManager.h
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"


@interface LuaManager : NSObject

- (void)runCodeFromString:(NSString *)code;
- (void)runCodeFromFileWithPath:(NSString *)path;
- (void)registerFunction:(lua_CFunction)function withName:(NSString *)name;

@end
