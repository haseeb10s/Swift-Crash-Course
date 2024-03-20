import Foundation

// Protocols in Swift = Ch:9

/* Protocols are a powerful feature used to define a blueprint of methods,
 properties, and other requirements that a class, structure, or enumeration
must adhere to. They define a set of rules or capabilities that a type can 
conform to, without providing an implementation.*/

protocol CanBreath {
    func breathe() // we cannot create func body in protocols itself
}
// Note Structure can be inherit from protocols
struct Animal: CanBreath {
    func breathe(){
        "Animal breathing"
    }
}
struct Person: CanBreath {
    func breathe(){
        "Person breathing"
    }
}
let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()


protocol CanJump {
    func jump()
}
extension CanJump {
    func jump(){
        "Jumping>>>>"
    }
}
struct Cat: CanJump {
}
let whiskers = Cat()
whiskers.jump()



protocol HasName {
    var name: String {get}
    var age: Int {get set}
} 
extension HasName{
    func describeMe(){
        "Your name is \(name) and you are \(age) years old"
    }
    mutating func increaseAge(){
        self.age += 1
    }
}
struct Dog: HasName {
    let name: String
    var age: Int 
}

var woof = Dog(
    name: "Woof",
    age: 10
)
woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()
woof.age

