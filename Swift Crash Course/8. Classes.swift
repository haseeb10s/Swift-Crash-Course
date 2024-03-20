import Foundation

// Classes in Swift - Ch:8

class Person {
    var name: String
    var age: Int

    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age 

    }
    func increaseAge(){
        self.age += 1
    }
}
let haseeb = Person( 
    name: "Haseeb",
    age: 22
)
haseeb.name
haseeb.age //22
haseeb.increaseAge() //23
haseeb.age

haseeb.age
let bar = haseeb
haseeb.age
bar.age

class Vehicle {
    func goVroom(){
        "Vroom vroom"
    }
}

class Car: Vehicle { // Inheritence

}
let car = Car()
car.goVroom()

// Private Setters
class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age=age 
    }
    func increaseAge() {
        self.age += 1
    }
}
let baz = Person2( age: 11)
baz.age


class Tesla{
    let manufacturer = "Tesla"
    let model: String
    let year: Int

    init() {
        self.model = "X"
        self.year = 2023
    }
    init(
        model:String,
        year: Int 
    ) {
        self.model=model
        self.year=year
    }

    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year = 2023
        )

    }
} 

