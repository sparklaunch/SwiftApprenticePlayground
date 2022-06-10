import Foundation

// TASK 1.
enum FormField {
    case firstName(String)
    case lastName(String)
    case emailAddress(String)
    case age(Int)
}

let minimumAge = 21
let submittedAge = FormField.age(22)

if case .age(..<minimumAge) = submittedAge {
    print("You are not yet 21 years old!!")
}

// TASK 2.
enum CelestialBody {
    case star
    case planet(liquidWater: Bool)
    case comet
}

let telescopeCensus = [
    CelestialBody.star,
    .planet(liquidWater: false),
    .planet(liquidWater: true),
    .planet(liquidWater: true),
    .comet
]

for case .planet(true) in telescopeCensus {
    print("Found a nice planet to live in!!")
}

// TASK 3.
let queenAlbums = [
    ("A Night at the Opera", 1974),
    ("Sheer Heart Attack", 1974),
    ("Jazz", 1978),
    ("The Game", 1980)
]

for case let (album, 1974) in queenAlbums {
    print(album)
}

// TASK 4.
let coordinates = (lat: 37.334890, long: -122.009000)

switch coordinates {
case (0, _):
    print("It's located on the equator.")
case (let lat, _) where lat > 0:
    print("It's located in the northern hemisphere.")
case (..<0, _):
    print("It's located in the southern hemisphere.")
default:
    print("Unknown case.")
}
