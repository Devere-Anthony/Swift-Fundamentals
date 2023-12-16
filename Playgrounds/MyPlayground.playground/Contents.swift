import UIKit

let name = "Devere"

func triple(value: Int) {
    let result = value * 3
    print("If you multiply \(value) by 3, you'll get \(result).")
}

triple(value: 10)

// argument labels for function
func sayHello(to person: String, and anotherPerson: String) {
    print("Hello, \(person) and \(anotherPerson).")
}

sayHello(to: "Andy", and: "Dick")

// omit parameter labels
func add(_ firstNumber: Int, to secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

let total = add(14, to: 6)

// default parameters
func display(teamName: String, score: Int = 0) {
    print("\(teamName): \(score)")
}

display(teamName: "Wombats", score: 100)
display(teamName: "Wombats")

// structs
struct Person {
    var name: String
}

let firstPerson = Person(name: "Devere")
print(firstPerson.name)


/* Property Observers - you can observe any property and respond to changes in the
 * property's value; they're called every time a property value is set
 *
 * This is done using closures: willSet and didSet
 *
 */

struct StepCounter {
    var totalSteps: Int = 0 {
        /* compute property with closures */
        willSet {
            /* willSet is called before the actual proprty value is changed and
             * has access to a parameter called newValue that contains the new
             * value of the property
             */
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            /* didSet is called after a property is changed and it has access to
             * the previous value of the property; I think this is due to it being a
             * closure (recall previous knowledge in other languages)
             */
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100


/* Type Properties and Methods - this isn't entirely clear but roll with it for now
 * and consult the language guide later
 */
struct Temperature {
    static var boilingPoint = 100    // static property for all instances of Temperature
}

let boilingPoint = Temperature.boilingPoint

/* Copying - assigning a structure to a variable or passing one as a function parameter
 * results in the values being copied and thus separate
 */






