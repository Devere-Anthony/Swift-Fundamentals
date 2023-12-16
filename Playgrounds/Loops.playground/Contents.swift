import UIKit

/* FOR LOOPS - built-in for range*/
for index in 1...5 {
    print("This is number \(index)")
}

// for-in when result doesn't need to use the value in the range
for _ in  1...3 {
    print("Hello")
}

// for-in to iterate over array
let names = ["Devere", "Anthony", "Weaver"]
for name in names {
    print(name)
}

for letter in "ABCD" {
    print("The letter is \(letter)")
}

// enumerate the index of each element along with its value
for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}

// for-in with dictionaries, returns a tuple
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicleName, wheelCount) in vehicles {
    print("A \(vehicleName) nas \(wheelCount) wheels.")
}

/* WHILE LOOPS - long story short, they work as you'd expect */
/* REPEAT-WHILE LOOPS - just a do-while found in other languages */
var steps = 0
let wall = 2

repeat {
    print("Step")
    steps += 1
    if steps == wall {
        print("You've hit a wall!")
        break
    }
} while steps < 10

