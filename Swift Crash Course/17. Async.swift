import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage
   .current
   .needIndefiniteExecution = true


func calculateFullName(
   firstName: String,
   lastName: String 
)  async -> String {
   try? await Task.sleep(for: seconds(1))
   return "\(firstName) \(lastName)"
} 

Task {
   let result1 = await calculateFullName(
      firstName: "Haseeb",
      lastName: "Khan"
   )
   async ler result2 = calculateFullName(
      firstName: "Foo",
      lastName: "Bar"
   )
   await result2
}