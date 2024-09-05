import SwiftUI

struct ContentView: View {
    @State private var showAddPage = false
    
    var body: some View {
        ZStack {
            // 主 NavigationView 和 TabView 布局
            NavigationView {
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
                    
                    // 中间的按钮布局，显示 AddPage 的触发器
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
                        .offset(y: -20) // 将按钮稍微往上移一点
                        
                        Spacer()
                    }
                }
            }
            
            // AddPage 的层级控制，飞入动画
            if showAddPage {
                // 遮罩层背景，点击时关闭 AddPage
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(2) // 设置比 TabView 更高的层级
                    .onTapGesture {
                        // 点击遮罩层时关闭 AddPage
                        withAnimation(.easeInOut(duration: 0.5)) {
                            showAddPage.toggle()
                        }
                    }
                
                // AddPage 叠加显示，覆盖住主页面
                AddPage()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                    .transition(.move(edge: .bottom)) // 动画从底部弹出
                    .zIndex(3) // 置于最顶层
            }
        }
    }
}

#Preview {
    ContentView()
}
