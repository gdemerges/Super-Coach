import SwiftUI

struct PlayerDetailView: View {
    let player: Player

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(player.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Nom: \(player.name)")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("Age: \(player.age)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text("Position: \(player.position)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text("Buts: \(player.goals)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text("Passes décisives: \(player.assists)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .center)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Performances")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Note: 8.5")
                        .foregroundColor(.white)
                    Text("5 derniers matches: 7, 8, 9, 6, 8")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .center)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Statistiques")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Temps de jeu: 90 minutes")
                        .foregroundColor(.white)
                    Text("Distance parcourue: 10.5 km")
                        .foregroundColor(.white)
                    Text("Duels remportés: 15")
                        .foregroundColor(.white)
                    Text("Passes réussies: 85%")
                        .foregroundColor(.white)
                    Text("Tirs cadrés: 3")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .center)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Analyse du jour")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Alou a montré une excellente forme lors du dernier match, démontrant sa capacité à contrôler le milieu de terrain et à contribuer à la fois défensivement et offensivement.")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Recommendation")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Il est recommandé à Alou de travailler son endurance et ses compétences défensives pour devenir un joueur plus complet. Participer à des sessions de formation supplémentaires axées sur ces domaines sera bénéfique.")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)

                Spacer()
            }
            .padding()
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .navigationTitle("Détails joueur")
        }
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: samplePlayers[0])
    }
}
