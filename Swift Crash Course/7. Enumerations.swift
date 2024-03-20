import Foundation

// Enumerations in Swift - Ch:7
// Enums, are a way to define a common type for a group of related values

enum Animals {
    case cat 
    case dog 
    case rabbit 
}
let cat = Animals.cat
print(cat)
if cat == Animals.cat {
    print("This is a cat")
} else if cat == Animals.dog {
    print("This a dog")
} else {
    print("This is a something else")
}

switch cat {  // switch statement is suitable with enums
    case .cat:
    print("This is a cat")
    break
    case .dog:
    print("This is a dog")
    break
    case .rabbit:
    print("This is a rabbit")
    break
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
    case let .fileOrFolder(
        path,
        name
    ):
    path
    name
    break
    case let .wwwUrl(path):
    path
    break
    case let .song(
        artist,
        someNames
    ):
    artist
    someNames
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(
    artist: "Johnny",
    someNames: "Gooo"
)
if case let .song(_, someNames) = withoutYou {
    someNames
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearmade: Int)

    var manufacturer: String {
    switch self {
        case let .car(manufacturer, _),
        let .bike(manufacturer, _):
        return manufacturer
    }
}
}

let car = Vehicle.car(
    manufacturer: "Toyota",
    model: "GLI"
)
car.manufacturer

let bike = Vehicle.bike(
    manufacturer: "Honda",
    yearmade: 2019
)
bike.manufacturer


emum FamilyMember: String {
    case father = "Dad"
}
FamilyMember.father.rawValue


enum FavouriteEmoji: String, CaseIterable {
    case blush = " "
    case fire = " "
}
FavouriteEmoji.allCasses
FavouriteEmoji.allCasses.map(\.rawValue)


enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long 
    }
}
var myHeight = Height.medium
myHeight.makeLong()
myHeight


 
