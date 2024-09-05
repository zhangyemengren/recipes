import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom) {
                TabView {
                    Text("Home Screen")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    Text("Profile Screen")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
                }
                .zIndex(0)
                HStack{
                    NavigationLink(destination: AddPage()){
                        ZStack {
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 50, height: 50)
                            Image(systemName: "plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30) // Adjust size here
                                .foregroundColor(.black)
                            
                            
                        }
                        .padding(.bottom, 0)
                
                    }
                    .offset(y: -10)
                   
                }
                .zIndex(1)
            }
        }
    }
}

#Preview {
    ContentView()
}
