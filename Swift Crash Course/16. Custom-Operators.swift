import Foundation

// Custom Operators in Swift - Ch:16

/*In Swift, custom operators are operators that you define yourself,
rather than using the predefined operators provided by the language
Custom operators can be useful for creating shorthand syntax for 
specific operations or for extending the functionality of the language
to better fit your specific needs. */

let firstName: String? = "Foo"
let lastName: String ? = " Bar"
let fullName = firstName + lastName
// Binary infix
func + (
    lhs: String?,
    rhs: String?
) -> String? {
    switch (lhs, rhs) {
    case (.none, .none):
      return nil
    case let (.some(value), .none),
      let (.none, .some(value)):
      return value     
    case let (.some(lhs), .some(rhs)):
      return lhs + rhs     
    }
}

// Unary Prefix

prefix operator ^
prefix func ^ (value: String) -> String {
    value.uppercased()
}
let lowercaseName = "Foo Bar"
let uppercaseName = ^lowercaseName

// Unary postfix 

postfix operator *
postfix func ^ (value: String) -> String {
    "*** \(value) ***"
}
let withStars = lowercaseName*


Struct Person{
    let name: String
}
struct Family{
    let members: [Person] 
}
func + (
    lhs: Person,
    rhs: Person
 ) -> Family {
    Family(
        members: [
            lhs, 
            rhs
        ]
    )
}
func + (
    lhs: Family,
    rhs: Person 
) -> Family {
    var members = family.members
    members.append(rhs) 
    return Family(members: members)
}

let mom = Person(name:"Mom")
let dad = Person(name:"dad")
let son = Person(name:"Son")
let daughter1 = Person(name:"Daughter 1")
let daughter2 = Person(name:"Daughter 2")

let family = mom + dad