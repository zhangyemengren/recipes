import SwiftUI

struct AddPage:View {
    var body: some View {
            VStack {
                Text("Add Page")
                    .font(.largeTitle)
                    .padding()
                
                Spacer()
                
                Button("Close") {
                    // 在父视图中关闭逻辑
                }
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
}

#Preview {
    AddPage()
}
