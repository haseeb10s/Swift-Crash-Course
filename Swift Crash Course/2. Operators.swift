import Foundation

// Operators in Swift-Ch:2

let myAge = 22
let yourAge = 20
if myAge > yourAge {
    print("I'm older than you")
} else if myAge < yourAge {
    print("I'm younger than you")
} else {
    print("Oh, we are same")
}

let myMotherAge = myAge + 30
print(myMotherAge)
let doubleMyAge = myAge * 2
print(doubleMyAge)

// 1. Unary Prefix -> working with one value
let foo = !true
print(foo)

// 2. Unary Postfix -> working with one value
let name = Optional("Haseeb")
print(type(of: name))
let unaryPostFix = name!
print(type(of: unaryPostFix))
print(unaryPostFix)

// 3. Binary Infix -> working with two values
let result = 2 + 3
let info = "Foo" + "" + "Joo"

// 4. Ternary Operator
let age = 30
let message = age >= 18 
? "You are an adult" 
: "You are not adult"
print(message)



