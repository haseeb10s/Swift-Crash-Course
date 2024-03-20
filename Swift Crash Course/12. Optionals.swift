import Foundation

// Optionals in Swift - Ch:12

/* In Swift, the concept of "optionals" is a powerful feature that allows
developers to represent both a value and the absence of a value. Optionals
are used to handle situations where a value may be missing or uncertain,
providing a safe way to work with values that might be nil.*/

func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return value * 2
    } else {
        return 0 
    }
}
multiplyByTwo()
multiplyByTwo(nil) // absence of value
multiplyByTwo(2)

let age: Int? = -> null
if age != nil {
    "Age is there! How odd!"
} else {
    "Age is nil. Correct"
}
if let age {
    "Age is there. How odd! Its value \(age)"
}else {
    "No age is present. As expect"
}

func checkAge(){
    guard age != nil else {
        "Age is nil as expected"
        return
    }
    "Age is not nil, Strange!"
}
checkAge()

let age2: Int? = 0
func checkAge2(){
    guard let age2 else{
        "Age is nil, How Strange"
        return
    }
    "Age2 is not nil as expected, Value = \(age2)"
}
checkAge2()



 