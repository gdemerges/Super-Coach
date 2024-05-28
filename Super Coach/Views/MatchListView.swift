import SwiftUI

struct MatchListView: View {
    let matches: [Match]
    @State private var searchText = ""
    @State private var showAllMatches = false

    var filteredMatches: [Match] {
        if searchText.isEmpty {
            return matches
        } else {
            return matches.filter { $0.opponent.lowercased().contains(searchText.lowercased()) }
        }
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    HStack {
                        TextField("Rechercher un adversaire", text: $searchText)
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

                    List(filteredMatches) { match in
                        NavigationLink(destination: MatchDetailView(match: match)) {
                            HStack {
                                Image(match.logoName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing, 10)
                                
                                VStack(alignment: .leading) {
                                    Text("Adversaire: \(match.opponent)")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(match.date)
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                    Text("Score: \(match.score)")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                }
                            }
                            .padding()
                        }
                        .listRowBackground(Color.gray.opacity(0.2))
                    }
                    .background(Color.black)
                    .scrollContentBackground(.hidden)
                    .navigationBarTitle("Matchs", displayMode: .inline)
                    
                    Spacer()
                    
                    Button(action: {
                        self.showAllMatches.toggle()
                    }) {
                        Text("Voir tous les matchs")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 10)
                }
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .navigationViewStyle(StackNavigationViewStyle()) 
        .sheet(isPresented: $showAllMatches) {
            AllMatchesView(matches: matches)
        }
    }
}

struct AllMatchesView: View {
    let matches: [Match]

    var body: some View {
        NavigationView {
            List(matches) { match in
                HStack {
                    Image(match.logoName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading) {
                        Text("Adversaire: \(match.opponent)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(match.date)
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text("Score: \(match.score)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .listRowBackground(Color.gray.opacity(0.2))
            }
            .background(Color.black)
            .scrollContentBackground(.hidden)
            .navigationBarTitle("Tous les Matchs", displayMode: .inline)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct MatchListView_Previews: PreviewProvider {
    static var previews: some View {
        MatchListView(matches: sampleMatches)
    }
}
