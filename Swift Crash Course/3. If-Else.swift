import Foundation

// If-Else in Swift-Ch:3

let myName = "Haseeb"
let myAge = 22
let yourName = "Jullie"
let yourAge = 21

if myName == "haseeb" {
    print("Your name is \(myName)")
} else {
    print("Opp's wrong name")
}

if myName == "Haseeb" {
    print("Now I guess It's correct")
} else if myName == "Harry"{
    print("Are you Harry")
} else {
    print("Okay i give up")
}

if myName == "Haseeb" && myAge == 30 {
    print("Name is Haseeb and age is 30")
} else if myAge == 20 {
    print("I only guessed the age is right")
} else {
    print("I don't know what I'm doing")
}

if myAge == 22 || myName == "foo"{
    print("Either age is 22, name is foo or both")
} else if myName == "Haseeb" || myAge == 30 {
    print("It's too late")
}

if myName == "Haseeb" 
&& myAge == 22 
&& yourName == "foo" 
|| yourAge == 21 {
    print("Accurate")
}

if (myName == "Haseeb"
&& myAge == 22)
&&
(yourName == "foo"
|| yourAge == 21) {
    print("Accurate")
} else {
    print("Not accurate")
}