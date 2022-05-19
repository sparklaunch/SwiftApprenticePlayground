import Foundation

// TASK 1.
struct PizzaOrder: Identifiable {
    let id: UUID = .init()
    let toppings: [Topping]
    let size: PizzaSize
    let thickness: DoughThickness
    let baking: Baking
}

enum Topping: String {
    case pepperoni = "Pepperoni"
    case potato = "Potato"
    case cheese = "Cheese"
}

enum PizzaSize: String {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
    case extraLarge = "Extra Large"
}

enum DoughThickness: String {
    case thin = "Thin"
    case regular = "Regular"
    case thick = "Thick"
}

enum Baking: String {
    case rare = "Rare"
    case medium = "Medium"
    case wellDone = "Well-Done"
}
