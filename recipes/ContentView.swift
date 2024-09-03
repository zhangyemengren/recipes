import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Text("Home Screen")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Text("Search Screen")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                Text("Profile Screen")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
