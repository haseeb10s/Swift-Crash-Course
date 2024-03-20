import Foundation

// Functions in Swift-Ch:4
//This code is suitable on XCode Playground

func noArgumentsAndNoReturnValue() {
    "Function without arguments"
}
noArgumentsAndNoReturnValue()

func newPlus(value: Int) -> Int {
    return value + 2
}

newPlusPlus(value: 30)

 func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}
 let customAdd = customAdd(
    value1: 10,
    value2: 20
) 

func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}
let customSubtracted = customMinus{
    20,
    10
}

customAdd(
    value1: 10,
    value2: 20
)

func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}
myCustomAdd(
    20,
    30
)

func doSomethingComplicated(
    with value: Int
    )-> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 30)

func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Foo")
getFullName(firstName: "Baz", lastName: "Qux")

func name(parameters) -> Type {
    
}