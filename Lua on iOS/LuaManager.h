//
//  LuaManager.h
//  Lua on iOS
//

#import <Foundation/Foundation.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"


@interface LuaManager : NSObject

- (void)runCodeFromString:(NSString *)code;
- (void)runCodeFromFileWithPath:(NSString *)path;
- (void)registerFunction:(lua_CFunction)function withName:(NSString *)name;
- (void)callFunctionNamed:(NSString *)name withObject:(NSObject *)object;

@end
