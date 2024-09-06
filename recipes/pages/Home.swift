import SwiftUI


struct Item {
    var name: String
}


struct Home:View {
    @State private var list = [Item(name: "汤"), Item(name: "肉类"), Item(name: "烘焙"), Item(name: "蔬菜"),Item(name: "水产"),Item(name: "主食")]
    var body: some View {
        VStack{
            Text("菜品条目")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(list, id: \.name) { item in
                        VStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.yellow)
                            Text("\(item.name)")
                        }
                        .frame(width: 120, height: 150)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    Home()
}
