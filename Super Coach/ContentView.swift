import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Accueil")
                }
            
            MatchView()
                .tabItem {
                    Image(systemName: "sportscourt")
                    Text("Match")
                }
            
            PlayerListView(players: samplePlayers)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Joueur")
                }
            
            TeamView()
                .tabItem {
                    Image(systemName: "person.2.square.stack")
                    Text("Team")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

