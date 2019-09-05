import SwiftUI

struct AboutView: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
        VStack {
            HStack(alignment: .center){
                CircleImage(image: Image("Furqan Agwan"))
            }
            .padding(.top, 5)
            .fixedSize()
            
            Text("Furqan Agwan")
            
            ScrollView {
                Text("Hi there! This application was created to showcase my personal achivements and work expericence. It was created using Swift 5 and Apple's lates UI framework (SwiftUI).")
                    .multilineTextAlignment(.center)
                
            }.frame(width: nil, height: nil, alignment: .center)
        }
    }
}
    var popUpView: some View {
        Text("Modal")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
