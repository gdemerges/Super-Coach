import SwiftUI

struct PlayerDetailView: View {
    let player: Player
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(spacing: 10) {
                    HStack {
                        GeometryReader { geometry in
                            VStack {
                                Spacer()
                                
                                Image(player.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 190)
                                    .clipped()
                            }
                            .frame(height: 180)
                        }
                        .frame(width: 180, height: 150)
                        
                        VStack(alignment: .leading) {
                            Text(player.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            HStack {
                                Image(player.teamLogo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                Text(player.team)
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                
                VStack(spacing: 10) {
                    HStack {
                        VStack {
                            Text("\(player.height) cm")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Height")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text("\(player.age) years")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Age")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text(player.country)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Country")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                    }
                    
                    Divider().background(Color.white)
                    
                    HStack {
                        VStack {
                            Text("\(player.shirtNumber)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Shirt")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text(player.preferredFoot)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Preferred foot")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text("$\(player.marketValue)M")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Market value")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                    }
                    
                    Divider().background(Color.white)
                    
                    HStack {
                        VStack {
                            Text("\(player.matches)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Matches")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text("\(player.goals)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Goals")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text("\(player.assists)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Assists")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack {
                            Text("\(player.rating, specifier: "%.2f")")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(4)
                                .background(Color.green)
                                .cornerRadius(5)
                            Text("Rating")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Analyse du jour")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("Alou a montré une excellente forme lors du dernier match, démontrant sa capacité à contrôler le milieu de terrain et à contribuer à la fois défensivement et offensivement.")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Recommandation")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("Il est recommandé à Alou de travailler son endurance et ses compétences défensives pour devenir un joueur plus complet. Participer à des sessions de formation supplémentaires axées sur ces domaines sera bénéfique.")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                
                Spacer()
            }
            .padding()
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .navigationBarTitle("Détails joueur", displayMode: .inline)
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: samplePlayers[0])
    }
}
