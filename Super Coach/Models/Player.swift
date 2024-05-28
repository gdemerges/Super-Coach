import Foundation

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let position: String
    let goals: Int
    let assists: Int
    let imageName: String
}

struct Team {
    let name: String
    let players: [Player]
}

// Sample data for previews
let samplePlayers = [
    Player(name: "Djessim", age: 25, position: "Attaquant", goals: 10, assists: 5, imageName: "djessim"),
    Player(name: "Alou", age: 22, position: "Milieu", goals: 7, assists: 8, imageName: "alou"),
    Player(name: "JS", age: 27, position: "Défenseur", goals: 2, assists: 3, imageName: "js")
]
