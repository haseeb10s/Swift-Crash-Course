import Foundation

// Extensions in Swift - Ch:10

/* extensions are a powerful feature that allow you to
add new functionality to existing classes, structures,
enumerations, or protocols*/

extension Int{
    func plusTwo() -> Int {
        self + 2
    }
}
let two = 2
two.plusTwo()



struct Person {
    let firstName: String
    let lastName: String
}
extension Person {
    init(fullName: String){
        let components = fullName
          .components(separatedBy: " ")
        self.init(
            firstName: components.fisrt ?? fullName,
            lastName: components.last ?? firstName
        )  
    }
}
let person = Person(fullName: "Foo Bar")
person.firstName
person.lastName


protocol GoesVroom {
    var vroomValue: String {get}
    func GoesVroom( ) -> String 
}
extension GoesVroom{
    func GoesVroom() -> String {
        "\(self.vroomValue) goes vroom"
    }
}

struct car {
    let manufacturer: String
    let model: String
}
let modelX = Car(
    manufacturer: "Tesla",
    model: "X"
)
extension Car: GoesVroom{
    var vroomValue: String{
        "\(self.manufacturer) model \(self.model)"
    }
}
modelX.GoesVroom()

class MyDouble {
    let value: Double
    init(value: Double) {
        self.value = value
    } 
}

extension MyDouble {
    convenience init(){
        self.init(value: 0)
    }
}
let myDouble = MyDouble()
myDouble.value