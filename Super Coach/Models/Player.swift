import Foundation

struct Player: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    var position: String
    var goals: Int
    var assists: Int
    var imageName: String
    var height: Int
    var country: String
    var team: String
    var teamLogo: String
    var shirtNumber: Int
    var preferredFoot: String
    var marketValue: Int
    var matches: Int
    var rating: Double
}

let samplePlayers = [
    Player(name: "Djessim", age: 25, position: "Attaquant", goals: 10, assists: 5, imageName: "djessim_correct", height: 180, country: "FRA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 9, preferredFoot: "Right", marketValue: 50, matches: 15, rating: 7.5),
    Player(name: "Alou", age: 22, position: "Milieu", goals: 7, assists: 8, imageName: "alou", height: 175, country: "FRA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 10, preferredFoot: "Left", marketValue: 45, matches: 18, rating: 7.8),
    Player(name: "JS", age: 27, position: "Défenseur", goals: 2, assists: 3, imageName: "js", height: 185, country: "FRA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 4, preferredFoot: "Right", marketValue: 40, matches: 20, rating: 7.2),
    Player(name: "Arturo", age: 27, position: "Défenseur", goals: 2, assists: 3, imageName: "arturo", height: 182, country: "ESP", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 5, preferredFoot: "Left", marketValue: 38, matches: 17, rating: 7.0),
    Player(name: "Ryad", age: 27, position: "Défenseur", goals: 2, assists: 3, imageName: "ryad", height: 184, country: "ALG", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 6, preferredFoot: "Right", marketValue: 35, matches: 19, rating: 7.3),
    Player(name: "Mathieu", age: 27, position: "Gardien", goals: 2, assists: 3, imageName: "mathieu", height: 190, country: "FRA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 1, preferredFoot: "Right", marketValue: 30, matches: 20, rating: 7.9),
    Player(name: "Ryan", age: 27, position: "Attaquant", goals: 2, assists: 3, imageName: "ryan", height: 178, country: "USA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 7, preferredFoot: "Left", marketValue: 32, matches: 16, rating: 7.4),
    Player(name: "Quentin", age: 27, position: "Défenseur", goals: 2, assists: 3, imageName: "quentin", height: 183, country: "FRA", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 8, preferredFoot: "Right", marketValue: 34, matches: 18, rating: 7.1),
    Player(name: "Ahmed", age: 27, position: "Milieu", goals: 2, assists: 3, imageName: "ahmed", height: 176, country: "EGY", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 11, preferredFoot: "Left", marketValue: 36, matches: 17, rating: 7.6),
    Player(name: "Adib", age: 27, position: "Milieu", goals: 2, assists: 3, imageName: "adib", height: 177, country: "MAR", team: "FC Duche", teamLogo: "la_duche_logo", shirtNumber: 12, preferredFoot: "Right", marketValue: 37, matches: 16, rating: 7.5)
]
