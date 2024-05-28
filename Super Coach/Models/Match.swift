import Foundation

struct Match: Identifiable {
    let id = UUID()
    let date: String
    let opponent: String
    let score: String
    let logoName: String
}

// Sample data for previews
let sampleMatches = [
    Match(date: "2024-05-27", opponent: "Simplon", score: "0-5", logoName: "simplon_fc_logo"),
    Match(date: "2024-05-20", opponent: "Alou FC", score: "1-3", logoName: "alou_fc_logo"),
    Match(date: "2024-05-13", opponent: "AFP FC", score: "0-0", logoName: "afp_fc_logo")
]

