//
//  Person.m
//  Lua on iOS
//
//  Created by Maciej Konieczny on 2013-04-07.
//  Copyright (c) 2013 Maciej Konieczny. All rights reserved.
//

#import "Person.h"


int l_set_person_name(lua_State *L) {
    // get arguments
    Person *person = (__bridge Person *)lua_touserdata(L, 1);
    NSString *name = [NSString stringWithUTF8String:lua_tostring(L, 2)];

    // set name
    person.name = name;

    // return nothing
    return 0;
}


@implementation Person

@end
