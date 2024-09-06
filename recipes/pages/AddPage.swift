import SwiftUI

struct AddPage:View {
    @Binding var showAddPage: Bool
    var body: some View {
        VStack {
            Text("Add Page")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            Button("Close") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    showAddPage = false 
                }
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
    @State var showAddPage = false
    AddPage(showAddPage: $showAddPage)
}
