import SwiftUI

struct HomePageView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Super Coach")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 0)

                HStack {
                    Image("ryan_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.trailing, 10)
                    
                    Text("Bienvenue Rayan")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                .padding(.top, 20)
                
                Text("Dernier Match")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                ZStack {
                    Image("match_image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("0 - 5")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(10)
                }
                .frame(height: UIScreen.main.bounds.height * 0.4)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Stats Générales")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("🟢 Possession: 62%")
                        .foregroundColor(.white)
                    Text("🎯 Tirs: 15")
                        .foregroundColor(.white)
                    Text("🎯 Tirs cadrés: 8")
                        .foregroundColor(.white)
                    Text("⚠️ Fautes: 10")
                        .foregroundColor(.white)
                    Text("🏳️ Corners: 5")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width * 0.9)
                
                Spacer()
            }
            .padding(20)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
