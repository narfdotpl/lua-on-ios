//
//  Person.h
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LuaManager.h"


int l_set_person_name(lua_State *L);


@interface Person : NSObject

@property (strong, nonatomic) NSString *name;

@end
