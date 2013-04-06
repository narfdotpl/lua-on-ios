Lua on iOS
==========

A sequence of clear commits showing how to add Lua to an empty iOS app.

Written in early 2013 (Lua 5.2, Xcode 4.6, iOS 6.1).  Based on parts
[two][] and [three][] of James Norton's "Scripting iOS Games With Lua".

  [two]: http://blog.stokedsoftware.com/blog/2012/02/05/scripting-ios-games-with-lua-part-ii/
  [three]: http://blog.stokedsoftware.com/blog/2012/02/06/scripting-ios-games-with-lua-part-iii/


Levels of integration
---------------------

Each step is covered in a separate commit.

1. [Run Lua code from a string][c1].
2. [Maintain interpreter's state between calls][c2].
3. [Run Lua code from a file][c3].
4. [Call an Objective-C function from Lua][c4].
5. [Pass to Lua a pointer to an Objective-C object][c5].

  [c1]: #todo
  [c2]: #todo
  [c3]: #todo
  [c4]: #todo
  [c5]: #todo


How to test this?
-----------------

1. Install [CocoaPods](http://cocoapods.org/).
2. `git clone https://github.com/narfdotpl/lua-on-ios.git`
3. `cd lua-on-ios`
4. `pod install`
5. `open *.xcworkspace`
6. Build and run.
