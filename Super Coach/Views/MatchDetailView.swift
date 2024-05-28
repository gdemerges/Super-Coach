import SwiftUI

struct MatchDetailView: View {
    let match: Match
    @State private var selectedSegment = 0

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                CustomSegmentedPicker(selectedSegment: $selectedSegment)
                    .padding()

                if selectedSegment == 0 {
                    StatsView(match: match)
                } else {
                    VideoAnalysisView()
                }

                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("\(match.opponent) - La Duche"), displayMode: .inline)
        }
    }
}

struct CustomSegmentedPicker: View {
    @Binding var selectedSegment: Int

    var body: some View {
        HStack {
            Button(action: {
                selectedSegment = 0
            }) {
                Text("Stats")
                    .fontWeight(selectedSegment == 0 ? .bold : .regular)
                    .foregroundColor(selectedSegment == 0 ? .white : .gray)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(selectedSegment == 0 ? Color.blue : Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }

            Button(action: {
                selectedSegment = 1
            }) {
                Text("Analyse vidéo")
                    .fontWeight(selectedSegment == 1 ? .bold : .regular)
                    .foregroundColor(selectedSegment == 1 ? .white : .gray)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(selectedSegment == 1 ? Color.blue : Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }
        }
    }
}

struct StatsView: View {
    let match: Match

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(match.logoName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    Text("\(match.opponent) - La Duche")
                        .font(.title)
                        .foregroundColor(.white)
                    Text("Pandas League, \(match.date)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding(.bottom, 20)

            VStack(alignment: .leading, spacing: 20) {
                StatView(statTitle: "Possession", homeTeam: "Simplon FC", awayTeam: "La Duche", homeValue: 62, awayValue: 38)
                
                StatView(statTitle: "Tirs cadrés", homeTeam: "Simplon FC", awayTeam: "La Duche", homeValue: 8, awayValue: 3)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            
            Spacer()
        }
        .padding()
    }
}


struct VideoAnalysisView: View {
    var body: some View {
        VStack {
            Text("Analyse Vidéo")
                .font(.title)
                .foregroundColor(.white)
                .padding()
            
            Image("analysis_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .cornerRadius(10)
                .padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct StatView: View {
    let statTitle: String
    let homeTeam: String
    let awayTeam: String
    let homeValue: Int
    let awayValue: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text(statTitle)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.bottom, 5)

            HStack {
                Text("\(homeValue)%")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                Text("\(awayValue)%")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            HStack {
                Text(homeTeam)
                    .foregroundColor(.white)
                Spacer()
                Text(awayTeam)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 5)
            
            HStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: CGFloat(homeValue) * 2, height: 10)
                Spacer()
                Rectangle()
                    .fill(Color.red) 
                    .frame(width: CGFloat(awayValue) * 2, height: 10)
            }
        }
        .padding()
    }
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(match: sampleMatches[0])
    }
}
