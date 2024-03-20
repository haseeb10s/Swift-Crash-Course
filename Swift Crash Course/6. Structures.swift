import Foundation

// Structures in Swift Ch-6

// Grouping data together called structures, Value Type

//Eg:1
struct Person {
    let name: String
    let age: Int
}
let foo = Person(
    name: "Foo",
    age: 20
)
print(foo.name)
print(foo.age)

//Eg:2
struct Macbook{
    let name: String
    let manufacturer: String // AnotherWay -> let manufacturer: "Apple"
    init(name: String){
        self.name = name
        self.manufacturer = "Apple"
    }
}
let mactonish = Macbook(name: "MacbookPro")
print(mactonish.name)
print(mactonish.manufacturer)

//Eg:3
struct Person2{
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
let info = Person2(
    firstName: "Foo",
    lastName: "Bar"
)
print(info.firstName)
print(info.lastName)
print(info.fullName)

//Eg:4
struct Car{
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving"
        currentSpeed = speed
    }
}
let immutableCar = Car(currentSpeed: 10)
    //immutableCar.drive(speed:20)

var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(speed:20)
mutableCar.currentSpeed
copy.currentSpeed

//Eg:5
struct Bike {
    let company: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            company: self.company,
            currentSpeed: currentSpeed
        )
    }
}
let bike1 = Bike(
    company: "HD",
    currentSpeed: 20
)
let bike2 = bike1.copy(currentSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed()