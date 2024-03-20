// import UIKit
// Loops in swift

// For Loop
// Iterating over an array
 let nbaAllStars = ["LeBron James", "Anthony Davis","Kawhi Leonard", "Luka Doncic", "James Harden"]

let allStarsPositions = ["PF": "LeBorn James",
                         "C" : "Anthony Davis",
                         "SF": "Kawhi Leonard",
                         "PG": "Luka Doncic",
                         "SG": "James Harden"] 

for player in nbaAllStars{
    print(player)
}                         

var randomInts: [Int] = []
for _ in 0..<25 {
    let randomInt = Int.random(in: 1...100)
    randomInts.append(randomInt)
}
print(randomInts)

for i in 0..<nbaAllStars.count {
    print("\(i+1). \(nbaAllStars[i])  ")
}

for (position, player) in allStarsPositions{
    print("\(player) is starting at the \(position) position")
}


for player in nbaAllStars{
    if player == "James Harden"{
        print("Yes!")
    }
}
// use of where keyword 
for player in nbaAllStars where player == "James Harden"{
    print("Yes")
}

// while loop
var teamUSA = 0
var teamUK = 0

while teamUSA < 21 && teamUK < 21 {
    let didTeamUSA = Bool.random()
    let score = Int.random(in: 1..3)

    if didTeamUSA{
        teamUSA += score
        print("Team USA score = \(teamUSA)")
    } else {
        teamUK += score
        print("Team UK score = \(teamUK)")
    }
}

if teamUSA > teamUK {
    print("Team USA won by score of \(teamUSA) to \(teamUK)")
} else {

    print("Team UK won by score of \(teamUK) to \(teamUSA)")
}

// while repeat : runs the game than check the score
repeat {
    let didTeamUSA = Bool.random()
    let score = Int.random(in: 1..3)

    if didTeamUSA{
        teamUSA += score
        print("Team USA score = \(teamUSA)")
    } else {
        teamUK += score
        print("Team UK score = \(teamUK)")
    }
} while teamUSA < 21 && teamUK < 21

if teamUSA > teamUK {
    print("Team USA won by score of \(teamUSA) to \(teamUK)")
} else {

    print("Team UK won by score of \(teamUK) to \(teamUSA)")
}