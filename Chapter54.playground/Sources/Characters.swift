import Foundation

// TASK 3.
public enum GameCharacterType {
    case elf, giant, wizard
}

public protocol GameCharacter: AnyObject {
    var name: String { get }
    var hitPoints: Int { get set }
    var attackPoints: Int { get }
}

fileprivate class Elf: GameCharacter {
    let name: String = "Elf"
    var hitPoints: Int = 3
    let attackPoints: Int = 10
}

fileprivate class Giant: GameCharacter {
    let name: String = "Giant"
    var hitPoints: Int = 10
    let attackPoints: Int = 3
}

fileprivate class Wizard: GameCharacter {
    let name: String = "Wizard"
    var hitPoints: Int = 5
    let attackPoints: Int = 5
}

public struct GameCharacterFactory {
    public static func make(ofType: GameCharacterType) -> GameCharacter {
        switch ofType {
        case .elf:
            return Elf()
        case .giant:
            return Giant()
        case .wizard:
            return Wizard()
        }
    }
}
