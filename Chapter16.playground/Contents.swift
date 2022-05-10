// TASK 1.
var myFavoriteSong: String?

myFavoriteSong = "The man who can't be moved"

if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song.")
}

// TASK 2.
myFavoriteSong = nil

if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song.")
}
