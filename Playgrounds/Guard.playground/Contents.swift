import UIKit

/* GUARDS */
// Branching and decision making is something most code relies up. To avoid the pyramid of doom,
// Swift offers the guard statement which can help communicate the specific conditions that must
// be met before proceeding. The code block that is inside of a guard statement is only executed
// if the condition evaluates to false, basically the opposide of an if statement.

// This allows you to exit a function early with a return in the else clause when the condition
// evaluates to false.

// Guard statements also allow the developer to move the conditional checks to the top of
// a function and put the code expected to run in the bottom

// e.g. two versions of a function, one uses if statements and the other uses guards
func divide_if(_ number: Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }
}

func divide_guard(_ number: Double, by divisor: Double) {
    guard divisor != 0.0 else {    // basically short circuit the function if need be
        return
    }
    let result = number / divisor
    print(result)
}


/* GUARD WITH OPTIONALS */
// basically, the if-let syntax to unwrap an optional and assign it to a constant only allows this
// constant to be accessible from only within the curly braces; the guard-let syntax also unwraps
// the optional and assigns it to a constant but the constant is accessible outside of the brackets

func processBook1(title: String?, price: Double?, pages: Int?) {
    /* unwrapping an optional using the if-let syntax */
    if let theTitle = title,
        let thePrice = price,
       let thePages = pages {
        print("The \(theTitle) costs $\(thePrice) and has \(thePages).")
    }
}

func processBook2(title: String?, price: Double?, pages: Int?) {
    /* unwrapping an optional using the guard-let syntax */
    guard let theTitle = title,
        let thePrice = price,
       let thePages = pages else {
        return     // short circuit if any of these fail (nil)
    }
    
    // observe, the constants are available outside of the guard-let block
    print("The \(theTitle) costs $\(thePrice) and has \(thePages).")
}
