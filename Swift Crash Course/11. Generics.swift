import Foundation

// Generics in Swift - Ch:11

/* Generics in Swift are a powerful feature that allows you
to write flexible, reusable functions and data types that can
work with any type. They enable you to write code that avoids
duplication by abstracting over types.*/

func perform<N: Numeric>( 
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N 
) -> N {
    op(lhs, rhs) 
}
let x = perform(+, on: 20.1, and: 33)
perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 10, and: 20)


//Alternate way
func perform2<N>( 
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N 
) -> N where N: Numeric {
    op(lhs, rhs) 
}
perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 10, and: 20)


protocol CanJump{
    func jump()
}
protocol CanRun{
    func run()
}
struct Person: CanJump, CanRun {
    func jump(){
        "Jumping..."
    }
    func run(){
        "Running..."
    }
}
func jumpAndRun<T: CanJump & CanRun>(_ value: T){
    value.CanJump()
    value.CanRun()
} 
let person = Person()
jumpAndRun(person)