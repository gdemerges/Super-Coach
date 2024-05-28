import SwiftUI

struct TeamView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Statistiques du FC Duche")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    StatBox(title: "⚽️ Buts", value: "27")
                    StatBox(title: "🎯 Passes des", value: "22")
                    StatBox(title: "🎯 Tirs", value: "1065")
                    StatBox(title: "🛡️ Arrêts", value: "20")
                    StatBox(title: "📊 Passes", value: "700")
                    StatBox(title: "🦵 Tacles", value: "40")
                    StatBox(title: "🏅 Meilleurs buteurs", value: "JS Ridge : 10\nR. Carré : 7\nJ. Lasso : 6", isDetailed: true)
                    StatBox(title: "🏅 Meilleurs passeurs", value: "Alou : 18\nJS : 10\nMoua Obs : 1", isDetailed: true)
                }
                .padding(.horizontal)
                
                Text("Classement")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    StandingBox(ranking: 1, team: "Simplon FC", logoName: "simplon_fc_logo", details: "W/L/T: 10/2/1")
                    StandingBox(ranking: 2, team: "Alou FC", logoName: "alou_fc_logo", details: "W/L/T: 7/3/1")
                    StandingBox(ranking: 3, team: "AFP FC", logoName: "afp_fc_logo", details: "W/L/T: 6/3/2")
                    StandingBox(ranking: 4, team: "La Duche", logoName: "la_duche_logo", details: "W/L/T: 4/5/2")
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
            .padding()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Team", displayMode: .inline)
    }
}

struct StatBox: View {
    let title: String
    let value: String
    var isDetailed: Bool = false

    init(title: String, value: String, isDetailed: Bool = false) {
        self.title = title
        self.value = value
        self.isDetailed = isDetailed
    }

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.bottom, 5)
            Text(value)
                .font(isDetailed ? .body : .largeTitle)
                .fontWeight(isDetailed ? .regular : .bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, isDetailed ? 5 : 0)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.vertical, 5)
    }
}

struct StandingBox: View {
    let ranking: Int
    let team: String
    let logoName: String
    let details: String

    var body: some View {
        VStack {
            HStack {
                Text("\(ranking)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .padding(.trailing, 5)
                
                Image(logoName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)                     .clipShape(Circle())
                    .padding(.trailing, 5)
                
                Text(team)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.bottom, 5)
            Text(details)
                .font(.subheadline)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.vertical, 5)
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TeamView()
        }
    }
}
