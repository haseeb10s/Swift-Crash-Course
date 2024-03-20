import Foundation

// Closures in Swift-Ch:5

//func add(
//    _ lhs: Int,
//    _ rhs: Int
//    ) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int 
  = { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
    }
add(20,  30)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}
customAdd(
    20,
    30
) { (lhs: Int, rhs: Int) -> Int in  // Closures
  lhs + rhs
}

customAdd( // Shorter code
    20,
    30
) { (lhs, rhs) -> Int in  // Closures
  lhs + rhs
}

customAdd(
    20, 
    30
    ) { 
        $0 + $1 
    } // moderen way

let ages = [
    30, 40, 19, 40
]
ages.sorted(by: >)   
ages.sorted(by: <)   


customAdd2(
    using: { $0 + $1 + 10},
    20,
    30
)

func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}
 
doAddition(
    on: 20,
    using: add10To(value:)
)

doAddition(
    on: 20,
    using: add20To(value:)
)