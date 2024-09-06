import SwiftUI

struct ContentView: View {
    @State private var showAddPage = false
    
    var body: some View {
        ZStack {
            // 主 NavigationView 和 TabView 布局
            NavigationView {
                ZStack(alignment: .bottom) {
                    TabView {
                        Home()
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
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showAddPage.toggle()
                            }
                        }) {
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
                        }
                        .offset(y: -20)
                        
                        Spacer()
                    }
                }
            }
            
            
            if showAddPage {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(2)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            showAddPage.toggle()
                        }
                    }
                
                AddPage(showAddPage: $showAddPage)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                    .transition(.move(edge: .bottom))
                    .zIndex(3)
            }
        }
    }
}

#Preview {
    ContentView()
}
