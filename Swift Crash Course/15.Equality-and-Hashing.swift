import Foundation

// Equality and Hashing - Ch:15

/*"Equality" refers to the ability to compare two instances of a type to
determine if they are considered equal. This is typically done using the
== operator. To enable equality comparison for custom types, you need to
conform to the Equatable protocol by implementing the == operator. */

struct Person: Equatable {
    let id: String
    let name: String
}
let foo1 = Person(
    id: "1",
    name: "Foo"
)
let foo2 = Person(
    id:"1",
    name:"Bar"
)

if foo1 == foo2 {
    "They are equal!"
} else {
    "They are not equal!"
}

/*
extension Person{
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id= rhs.id
    }
} */

enum AnimalType: Equality{
    case dog(breed: String)
    case cat(breed: String)
}

/*
extension AnimalType: Equality{
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        switch (lhs, rhs) {
            case let (.dog(lhsBreed), .dog(rhsBreed)),
            let (.cat(lhsBreed), .cat(rhsBreed)):
              return lhsBreed == rhsBreed 
            default: 
              result false   
        }
    }
}
*/

struct Animal {
    let name: String
    let type: AnimalType

    static func == (
        lhs: Self,
        rhs: Self 
    ) -> Bool {
        lhs.type == rhs.type
    }
}

let cat1 = Animal(
    name: "Whiskers",
    type: .cat(
        breed: "Street Cat"
    )
)
let cat2 = Animal(
    name: "Whoosh",
    type: .cat(
        breed: "Street Cat"
    )
)

if cat1 == cat2 {
    "They are equal because of their type"
} else {
    "They are not eqaul"
}


// Hashable
/*"Hashing" in Swift refers to the process of generating a unique hash
value for a given object. Hashing is important for data structures like
sets and dictionaries, where efficient lookups are based on hash values. */

struct House: Hashable{
    let number: Int 
    let numberOfInstances: Int 
}
let house1 = House(
    number: 123,
    numberOfBedrooms: 2
)
house1.hashValue
let house2 = House(
    number: 123,
    numberOfBedrooms: 3
)
house2.hashValue

let houses = Set([house1, house2])
houses.count

