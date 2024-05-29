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
                            .foregroundColor(.black)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 16)
                                    
                                    if !searchText.isEmpty {
                                        Button(action: {
                                            self.searchText = ""
                                        }) {
                                            Image(systemName: "multiply.circle.fill")
                                                .foregroundColor(.gray)
                                                .padding(.trailing, 16)
                                        }
                                    }
                                }
                            )
                            .padding(.horizontal, 10)
                    }
                    .padding(.top, 10)
                    .background(Color.black)
                    
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                            ForEach(filteredPlayers) { player in
                                NavigationLink(destination: PlayerDetailView(player: player)) {
                                    VStack {
                                        Image(player.imageName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .clipShape(Circle())
                                        
                                        Text(player.name)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        
                                        Text(player.position)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    .cornerRadius(10)
                                }
                            }
                        }
                        .padding()
                    }
                    
                    Spacer()
                }
            }
            .navigationBarTitle("Joueurs", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView(players: samplePlayers)
    }
}
