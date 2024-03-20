import Foundation

// Collections in Swift - Ch:14

/*In Swift, collections are data structures that allow you to store
multiple values in a single container. Swift provides a variety of
collection types, each with its own characteristics and use cases.
The main collection types in Swift include:
Arrays, Sets, Dictionaires, Tuples, Range*/

let num = [1,2,3,4]
num.fisrt
num.last
num.count 
num.map(-) // operator

var mutatingNum = [4,5,6]
mutatingNum.append(7)
mutatingNum.insert(3, at: 0)
mutatingNum.insert(contentOf : [1,2], at: 0)

for value in num {
    value 
}

for value in num where value % 2 == 0 {
    value
}

num.map { (value: Int) -> Int in 
  value * 2
}

num.filters { (value: Int) -> Bool in
  value >= 3
}

let stuff1 = [
    1,
    "Hello",
    2,
    "World"
] as [Any] 
stuff1.count

let stuff2: [Any] = [
    1,
    "Hello",
    2,
    "World"
] 
stuff2.count


// Sets : Contains only unique values

let uniqueNumbers = Sets([1,2,1,2,3])
uniqueNumbers.count
uniqueNumbers.main(-)

let myNumbers = Sets([1,2,3,nil.5])
let notNilNumbers = Set(
    myNumbers.compactMap {
        $0
    }
)
notNilNumbers

let stuff3: Set<AnyHashable> = [
    1,2,3,"Haseeb"
]
stuff3.count

let intIntStuff1 = stuff1 
  .compactMap { (value: Any) -> Int? in
    value as? Int  
  }

let intStringStuff1 = stuff1 
  .compactMap { (value: Any) -> String? in
    value as? String  
  }

struct Person: Hashable {
    let id: UUID
    let name: String
    let age: Int 
}
let fooId = UUID()
let foo = Person(
    id: fooId,
    name: "Foo",
    age: 20
)
let bar = Person(
    id: barId,
    name: "Bar",
    age: 30
)
let people: St<Person> = [foo, bar]
people.count

struct Person2: Hashable {
    let id: UUID
    let name: String
    let age: Int 

    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
    static func == (
        lhs: Self,
        rhs: Self 
    ) -> Bool {
        lhs.id == rhs.id 
    }
}

let bazId = UUID()
let baz = Person2(
    id: bazId,
    name: "Baz",
    age: 20
)
let qux = Person2(
    id: bazId,
    name: "Qux",
    age: 30
)
let people2 = Set([baz, qux])
people2.fisrt!.name


// Dictionaires

let userInfo = [
    "name": "Haseeb",
    "age": 22,
    "address": [
        "line1": "Address line 1",
        "postCode": "1234"
    ]
] as [String: Any]

userInfo["name"]
userInfo["age"]
userInfo["address"]
// please don't do
(userInfo["address"] as! [String: String])["postcode"]

userInfo.keys
userInfo.values

for (key, value) in userInfo{
    print(key)
    print(value)
}

for (key, value) in userInfo where value is Int{
    key
    value
}

for (key, value) in userInfo while value is Int
  && key.count > 2 {
    key
    value
    
}