import Foundation

// Error Handling - Ch:13

/* Error handling in Swift provides a way to respond to and recover 
from error conditions that arise when your program runs. In Swift,
errors are represented by values of types that conform to the Error
protocol.*/

struct Person{
    let fisrtName: String?
    let lastName: String?
    enum Errors: Error {
        case fisrtNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    func getFullName() throws -> String {
        switch (fisrtName, lastName) {
        case (.none, ,none):
          throw Error.bothNamesAreNil
        case (.none, .some):
          throw Error.fisrtNameIsNil
        case (.some, .none):
          throw Error.lastNameIsNil
        case let (.some(fisrtName), .some(lastName)):
          return "\(fisrtName) \(lastName)"      
        }
    }
}
let foo = Person(
    fisrtName: "Foo",
    lastName: nil)
do {
    let fullName = try foo.getFullName()
} catch  {
    "Got an error = \(error)"
}