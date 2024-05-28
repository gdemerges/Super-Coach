import SwiftUI

struct PlayerListView: View {
    let players: [Player]
    @State private var searchText = ""

    var filteredPlayers: [Player] {
        if searchText.isEmpty {
            return players
        } else {
            return players.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all) 
                
                
                VStack {
                    HStack {
                        TextField("Rechercher un joueur", text: $searchText)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.white))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 16)
                                    
                                    if !searchText.isEmpty {
                                        Button(action: {
                                            self.searchText = ""
                                        }) {
                                            Image(systemName: "multiply.circle.fill")
                                                .foregroundColor(.white)
                                                .padding(.trailing, 16)
                                        }
                                    }
                                }
                            )
                            .padding(.horizontal, 10)
                    }
                    .padding(.top, 10)
                    .background(Color.black)
                    
                    List(filteredPlayers) { player in
                        NavigationLink(destination: PlayerDetailView(player: player)) {
                            HStack {
                                Image(player.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing, 10)
                                
                                VStack(alignment: .leading) {
                                    Text(player.name)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(player.position)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                        }
                        .listRowBackground(Color.gray.opacity(0.2))
                    }
                    .background(Color.black)
                    .scrollContentBackground(.hidden)
                    .navigationBarTitle("Joueurs", displayMode: .inline)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) 
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView(players: samplePlayers)
    }
}
