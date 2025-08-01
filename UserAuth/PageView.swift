import SwiftUI

struct PageView: View {
    
    @State private var tabs: Tab = .home
    
    enum Tab {
        case home
        case contact
        case business
        
    }
    var body: some View {
            
            
            TabView {
//                        NavigationStack{

                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                    .tag(Tab.home)
                
                ContactView()
                    .tabItem {
                        Image(systemName: "bag.fill")
                        Text("Contact")
                    }
                
                //BusinessView()
                MainScreen()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Business")
                    }
                    .tag(Tab.business)
            }
        }
    }
//}



#Preview {
    PageView()
}
