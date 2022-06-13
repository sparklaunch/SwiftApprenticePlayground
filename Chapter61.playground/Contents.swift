import Foundation

// TASK 1.
struct Spaceship: Codable {
    var name: String
    var crew: [CrewMember]
}

struct CrewMember: Codable {
    var name: String
    var race: String
}

// TASK 2.
extension Spaceship {
    enum CodingKeys: String, CodingKey {
        case name = "spaceship_name"
    }
    enum RankKeys: String, CodingKey {
        case captain
        case officer
    }
}

// TASK 3.
extension Spaceship {
    init(from decoder: Decoder) throws {
        let container = try  decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        let rankContainer = try  decoder.container(keyedBy: RankKeys.self)
        let captain = try rankContainer.decodeIfPresent(CrewMember.self, forKey: .captain)
        let officer = try rankContainer.decodeIfPresent(CrewMember.self, forKey: .officer)
        var crews: [CrewMember] = []
        for case let crew? in [captain, officer] {
            crews.append(crew)
        }
        crew = crews
    }
}

let url = Bundle.main.url(forResource: "Incoming", withExtension: "json")!
let data = try Data(contentsOf: url)
let decoder = JSONDecoder()

do {
    let spaceship = try decoder.decode(Spaceship.self, from: data)
    print(spaceship)
} catch {
    print(error)
}

// TASK 4.
var klingonSpaceship = Spaceship(name: "IKS NEGH’VAR", crew: [])
let klingonMessage = try PropertyListEncoder().encode(klingonSpaceship)

let propertyListDecoder = PropertyListDecoder()

do {
    let spaceship = try propertyListDecoder.decode(Spaceship.self, from: klingonMessage)
    print(spaceship)
}

// TASK 5.
enum Item: Codable {
    case message(String)
    case numbers([Int])
    case mixed(String, [Int])
    case person(name: String)
}

let items: [Item] = [.message("Hi"),
                     .mixed("Things", [1,2]),
                     .person(name: "Kirk"),
                     .message("Bye")]

do {
    let data = try JSONEncoder().encode(items)
    let dataString = String(data: data, encoding: .utf8)!
    print(dataString)
} catch {
    print(error)
}
