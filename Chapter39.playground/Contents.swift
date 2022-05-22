import Foundation

// TASK 1.
class List {
    var name: String = "Favorites"
    var titles: [String]
    func print() {
        Swift.print(titles.joined(separator: ", "))
    }
    init(name: String, titles: [String]) {
        self.name = name
        self.titles = titles
    }
}

class User {
    var list: [List] = []
    func addList(_ list: List) {
        self.list.append(list)
    }
    func list(for name: String) -> List? {
        if let index = self.list.firstIndex(where: { list in
            list.name == name
        }) {
            return self.list[index]
        }
        return nil
    }
}

let jane = User()
let john = User()

let favoriteList = List(name: "Favorites", titles: ["Eagle's Eyes", "The Source Code", "Geminis"])

jane.addList(favoriteList)
john.addList(favoriteList)

jane.list(for: "Favorites")?.print() ?? print("Nil")
john.list(for: "Favorites")?.print() ?? print("Nil")

if let list = jane.list(for: "Favorites") {
    list.titles.removeLast()
}

jane.list(for: "Favorites")?.print() ?? print("Nil")
john.list(for: "Favorites")?.print() ?? print("Nil")

// TASK 2.
enum Size: String, CaseIterable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
    case extraLarge = "Extra Large"
}

enum Color: String, CaseIterable {
    case red = "Red"
    case yellow = "Yellow"
    case green = "Green"
    case blue = "Blue"
    case white = "White"
    case black = "Black"
    case brown = "Brown"
    case pink = "Pink"
}

struct TShirt {
    let size: Size
    let color: Color
    let price: Double
    var image: String? = nil
}

class Shopper {
    let name: String
    var email: String? = nil
    let shoppingCart: ShoppingCart
    init(name: String, email: String, shoppingCart: ShoppingCart) {
        self.name = name
        self.email = email
        self.shoppingCart = shoppingCart
    }
}

struct Address {
    let name: String
    let street: String
    let city: String
    let zipCode: String
}

struct ShoppingCart {
    var items: [TShirt] = []
    let address: Address
    func totalCost() -> Double {
        items.reduce(into: 0.0) { result, value in
            result += value.price
        }
    }
}

let fancyTShirt = TShirt(size: .medium, color: .blue, price: 12.99)
let plainTShirt = TShirt(size: .medium, color: .red, price: 10.99, image: "Palm Tree")

let shoppingCart = ShoppingCart(items: [fancyTShirt, plainTShirt], address: .init(name: "Clothing", street: "Fairview Ave.", city: "Teterboro", zipCode: "01300"))
shoppingCart.totalCost()

let james = Shopper(name: "James Doe", email: "johndoe123@gmail.com", shoppingCart: shoppingCart)
