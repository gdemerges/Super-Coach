import SwiftUI

struct MatchView: View {
    var body: some View {
        NavigationView {
            MatchListView(matches: sampleMatches)
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
