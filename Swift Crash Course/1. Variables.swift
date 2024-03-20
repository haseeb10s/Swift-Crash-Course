import Foundation // importing all usefull stuff in swift
 
// Variables in Swift-Ch:1

// We create a variable in swift using let, var
// let cannot be asign again

let myName = "Haseeb"
let yourName = "John"
// myName = yourName | cannot assign to value

var names = [ //array
    myName,
    yourName
]
names = ["Bla"]
names.append("Bar")
names.append("Baz")
print(names)

let foo = "foo"
var foo2 = foo
foo2 = "foo2"
print(foo)
print(foo2)

let moreNames = [
    "Khan",
    "Jimmy"
]
var copy = moreNames
copy.append("James")
print(moreNames)
print(copy)

let oldArray = NSMutableArray( // NSMutableArray is class allow us to add, remove, modify   
    array: [
        "Smith",
        "Kim"
    ]
)
oldArray.add("Charles")
print(oldArray)
var newArray = oldArray
newArray.add("Fox")
print(newArray)

let someNames = NSMutableArray(
    array: [
        "Blast",
        "Fire"
    ]
)
// Function syntax in Swift
func changeTheArray(_ array: NSArray) { // NSArray is unmutable 
    let copy = array as! NSMutableArray //as! is the type casting operator, used for type conversion
    copy.add("Blaz")
}
changeTheArray(someNames)
print(someNames)

