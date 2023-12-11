/* leave this commented out until/if ios simulator is installed */
//import UIKit

//=============================================================================//
// 1.3 - Constants, Variables, and Data Types
//=============================================================================//
/* Constants */
let name = "Devere"

/* Variables */
var age = 31.5
print("\(name) is \(age) years old now! How time flies...")
age = 32
print("and soon \(name) will be \(Int(age))!")

/* assign constants and variables from other constants and variables */
let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore
print(playerOneScore)
print(playerTwoScore)
playerOneScore = 200    // change variable value defined from constant
print(playerOneScore)

/* naming constants and variables */
let mood = "😐"
print("How are you feeling today?...")
print(mood)

/* typedefs in swift */
struct Person
{
    var firstName: String
    var lastName: String
    
    func sayHello()
    {
        print("Hello, my name is \(firstName) \(lastName)")
    }
}

let me = Person(firstName: "Devere", lastName: "Weaver")
let someoneElse = Person(firstName: "Paris", lastName: "Scott")
me.sayHello()
someoneElse.sayHello()

/* type inference - the compiler will infer types based on initialized values,
 * but you can always be explicit with type declarations
 */

// type annotation when creating a variable that hasn't been assigned a value
let firstName: String
firstName = "D"

// type annotation when you create a const/var that could be inferred as more than
// one type; here "J" would be inferred to be a string so we explicitly tell it to
// be of type char
let middleInitial: Character = "J"

var remainingDistance: Double = 30

// type annotations for writing typedefs
struct Car
{
    var make: String
    var model: String
    var year: Int
}

/* Note: defining a const/var, a type must be specificied explicitly or a value
 * must be assigned for the compiler to infer the type
 */


//=============================================================================//
// 1.4 - Operators - they're basically the same as every other language,
// just watch out for arithmetic between types and be explicit
//=============================================================================//

//=============================================================================//
// 1.5 - Control Flow - also basically the same 
//=============================================================================//
let temperature = 100
if (temperature >= 100)
{
    print("The water is boiling")
}

/* yeah, they're all basically the same as every other C-based langauage you've
 * used, just look at the docs if necessary for any Swift-specific stuff
 */
