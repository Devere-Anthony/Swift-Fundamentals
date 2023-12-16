import UIKit

/* ARRAYS */
var names: [String] = ["Anne", "Gary", "Keith"]
var moreNames = ["Me", "Myself", "I"]    // type inference - prefer this unless you have a specific reason to restrict the type

// check for array values
let numbers = [4, 5, 6]
if numbers.contains(5) {
    print("There is a 5")
}

/* ARRAY TYPES - declare type using... */
var arr1: [Int] = []    // type annotation
var arr2: Array<Int> = []    // collection type annotation
var arr3 = [Int]()    // whatever this guy is called

/* WORKING WITH ARRAYS */

// repeating default values
var myArray = [Int](repeating: 0, count: 100)
print(myArray)

// checking element counts
let count = myArray.count
print("There are \(count) zeros in the array.")

if !myArray.isEmpty {
    print("The array is not empty.")
}

// array access - basically the same as in any other language
let firstName = names[0]
print(firstName)

// appending to array
var names1 = ["Amy"]
names1.append("Joe")    // single element
names1 += ["Keith", "Jane"]    // multiple elements
print(names1)
names1.insert("Bob", at: 0)
print(names1)
names1.remove(at: 2)
print(names1)
names1.removeLast()
print(names1)
names1.removeAll()
print(names1)

// Long story short, treat arrays in Swift as you would in many other languages

/* DICTIONARIES - again, same as any other language */
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]

// creating empty dictionaries is the same as arrays
var dict1 = [String: Int]()    // my preference
var dict2 = Dictionary<String, Int>()
var dict3: [String: Int] = [:]

/* ADD/REMOVE/MODIFY DICTIONARY */
scores["Oli"] =  399

// check if an old value exists before replacing it, the old value for the key "Richard"
// will be returned here, do what you want with it, use the if-let syntax to let code run
// only if a value is returned from a method (wtf, this is very useful)
if let oldValue = scores.updateValue(100, forKey: "Richard") {
    print("Richard's old value was \(oldValue)")
}

// removal from dictionaries
print(scores)
scores["Richard"] = nil
print(scores)

// check if a value exists before removing it
if let removedValue = scores.removeValue(forKey: "Luke") {
    print("Luke's score was \(removedValue) before he stopped playing")
}
print(scores)

/* DICTIONARY ACCESS */
var scores1 = ["Richard": 500, "Luke": 400, "Cheryl": 800]

// access via keys or values
let players = Array(scores1.keys)
let points = Array(scores1.values)
print(players)
print(points)

// access via if-let syntax
if let lukeScore = scores1["Luke"] {
    print(lukeScore)
}

if let henryScore = scores1["Henry"] {    // not executed, doesn't exist
    print(henryScore)
}

