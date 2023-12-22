/* 👋🏾 */

import UIKit

/* TYPE CASTING */

// Swift includes a conditional cast which can be used to cast a type base on
// the conditional. Most of the casting rules are the same as with other languages,
// an the ones that are Swift specific, learn by doing.

/* ANY */
// any allows for heterogeneous collections of items
// any - represent an instance of any type
// anyObject - represent an instance of any class in Swift but not a structure

struct Dog {
}

// an array that can old any type
var items: [Any] = [5, "Bill", 6.7, Dog()]

// access the elements
if let firstItem = items[0] as? Int {
    print(firstItem + 4)
}
