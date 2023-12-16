/* Classes and Inheritance */
import UIKit

/* Inheritance - classes can have hierarchical relationships while structs don't */

// base class
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing - let subclasses implement this
    }
}

// instantiate base class
let someVehicle = Vehicle()
print("Vehicle:  \(someVehicle.description)")


// subclass
class Bicycle: Vehicle {
    var hasBaket = false    // additional child property
}

let bicycle = Bicycle()
bicycle.hasBaket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

// subclass a subclass...idk, just be careful with all these nested classes
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 10.0
print("Tandem: \(tandem.description)")


// override methods and properties - use override keyword
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}

let train = Train()
train.makeNoise()

// override with a getting or a computed property
class Car: Vehicle {
    var gear = 1
    
    override var description: String {    // access parent property and change it
        super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 100
car.gear = 5
print("Car: \(car.description)")

// override initializer
class Person {
    let name: String
    
    init(name: String) {     // initilaizer that sets class property
        self.name = name
    }
}

class Student: Person {
    var favoriteSubject: String
    
    // this class must have its own initializer since the parent class has
    // an initializer that sets properties
    init(name: String, favoriteSubect: String) {
        self.favoriteSubject = favoriteSubect
        super.init(name: name)    // since parent class initalizer sets name, you must do it here too to avoid duplicating the work
    }
}

/* REFERENCES */

// point to same class object in memory
class Person1 {    // use 1 to avoid redefinition of a type
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var jack = Person1(name: "Jack", age: 24)
var myFriend = jack    // point to same guy
jack.age += 1
print(jack.age)
print(myFriend.age)

// assigning to the same instance of a class will do this; however, observe the
// difference between classes and structs behavior
struct Person2 {
    var name: String
    var age: Int
}

var jack2 = Person2(name: "Jack", age: 24)
var myFriend2 = jack2    // creates a separate object in memory
jack2.age += 1
print(jack2.age)
print(myFriend2.age)


/* STABLE IDENTITY */

/* in this example MessageCell is a subclass of UITableViewCell and it represents a row in a table view,
 * it is designed to display information about an email message and each instance will be accessed in many
 * places so we don't necessarily want to keepy making copies of it
 */
class MessageCell: UITableViewCell {
    func update(message: Message) {
        // update UITableViewCell properties with information about the message
        textLabel.text = message.subject
        detailTextLabel.text = message.previewText
    }
}
