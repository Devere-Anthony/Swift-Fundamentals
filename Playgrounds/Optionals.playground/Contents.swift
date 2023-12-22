import UIKit

var greeting = "Hello, playground"

/* NIL */
struct Book {
    var name: String
    var publicationYear: Int?    // matching optional type for Int (the value may or may not contain an Int)
}

let firstDickens = Book(name: "A Christmas Carol", publicationYear: 1843)
let secondDickens = Book(name: "David Copperfield", publicationYear: 1849)
let thirdDickens = Book(name: "A Tale of Two Cities", publicationYear: 1859)

var books = [firstDickens, secondDickens, thirdDickens]

// use nil in place of the optional Int type
let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)


/* SPECIFYING THE TYPE OF AN OPTIONAL */

// need to use type annotations when specifying a variable
var serverResponseCode: Int? = 404    // could be nil later
var clientRequestCode: Int? = nil     // could hold an Int later


/* WORKING WITH OPTIONAL VALUES */

// optionals have optional binding which unrwaps the optional and if it contains a value
// then it will assign the value to a constant as a non-optional type so it's safe to work with
var someOptional: String? = "Not nil"

// "if there is an actual value here...do stuff with it"
if let constantName = someOptional {
    // observe, constantName only exists within the scope of the {}
    print(constantName)
}

// optional binding on previous example
if let unwrappedPublicationYear = unannouncedBook.publicationYear {
    print("The publication year is still \(unwrappedPublicationYear).")
} else {
    print("The publication year is still unknown.")
}


/* FUNCTIONS AND OPTIONALS */
// some functions return optionals in Swift

// good conversion
let string = "123"
let possibleNumber = Int(string)
print(possibleNumber)    // Observe it returns an optional

// bad conversion
let string2 = "Jessica"
let anotherNumber = Int(string2)
print(anotherNumber)

// write function with optional as argument
func printFullName(firstName: String, middleName: String?, lastName: String) {
    // do some stuff
}

// write function that returns an optional
func textFromURL(url: URL) -> String? {
    // do some more stuff
    let string: String? = "Finished converted URL"
    return string
}


/* FAILABLE INITIALIZERS */
// some initializers can return nil which are called failable initalizers,
// it may make sense to write your own failable initializers and define the logic for
// returning an instance or nil

// e.g.
struct Toddler {
    init? (name: String, monthsOld: Int) {
        /* failable initializer that will return type Toddler? */
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
    
    var name: String
    var monthsOld: Int
}

// remember, optionals must be unwrapped safely before using, even when using failable initializers
let toddler = Toddler(name: "Joanna", monthsOld: 14)
if let myToddler = toddler {
    print("\(myToddler.name) is \(myToddler.monthsOld) months old")
} else {
    print("The age you specified for the toddler is not between 1 and 3 years of age")
}


/* OPTIONAL CHAINING */
// nested optionals
struct Person {
    var age: Int    // every person has an age
    var residence: Residence?    // not every person has a residence
}

struct Residence {
    var address: Address?    // not every residence has an address...?
}

struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?    // not every address has an apartment number
}

// with nested optionals, we have to unwrap each of then in turn with a lot of code,
// BUT there is a better way of unwrapping them, so we'll just skip the naive way...
// enter OPTIONAL CHAININGGGGGGGG...
let addy = Address(buildingNumber: "501", streetName: "Love's Way", apartmentNumber: "55")
let residence = Residence(address: addy)
let person = Person(age: 92, residence: residence)

// peep the chain, if any of the optionals returns nil, it breaks the chain and then
// the constant is never assigned and the code block in the body is never executed
if let theApartmentNumber = person.residence?.address?.apartmentNumber {
    print("He/she lives in apartment number \(theApartmentNumber)")
}


/* IMPLICITLY UNWRAPPED OPTIONALS */
/* Implicitly unwrapped optionals are created using the ! operator, you can observe this when dealing
 * with storyboards and UIkit. E.g. When connected an element from the layout to the ViewController,
 * it will be initialized with !, meaning that it is initialized to...something, but we know that we're
 * going to be  initalizing it before we attempt to access it. This way, it's safe to work with and it
 * will be unwrapped automatically when it is used. Sounds convenient but only use this when you need
 * to initialize an object without supplying the value, but you know you'll be giving the object a value
 * before any other code tries to access it.
 */
