import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                
                // MARK: - Logo
                Image("NeighborBite Logo") // Make sure you add this image to your Assets folder
                    .resizable()
                    .scaledToFit()
                    //.frame(width: 120, height: 120)
                    .padding(.top, 30)
                
                // MARK: - Greeting Card
                VStack(spacing: 5) {
                    Text("Good Evening!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("What would you like to eat?")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 4)
                .padding(.horizontal)

//              
                NavigationLink { ContentView()
                        } label: {
                          Text("Shop Now!")
                                .font(.headline)
                                .padding(.all)
                                .frame(maxWidth: .infinity)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 4)
                        }
                        .padding(.horizontal)

                Spacer()

              
            }
            .navigationBarHidden(true)
        }
    }
}

struct FilledButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 4)
        }
    }
}

//struct TabBarItem: View {
//    let icon: String
//    let label: String
//
//    var body: some View {
//        VStack(spacing: 4) {
//            Image(systemName: icon)
//                .font(.title3)
//            Text(label)
//                .font(.caption)
//        }
//        .foregroundColor(.gray)
//    }
//}


#Preview{
    HomeView()
}
