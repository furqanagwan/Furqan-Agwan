import Foundation
import SwiftUI

//Dynamic circular image and static image

struct CircleImage: View {
    
    @State var showAboutView: Bool = false
    
    var image: Image
    var height: CGFloat
    var width: CGFloat
    
    var body: some View {
        Button(action: {
            self.showAboutView.toggle()
        }) {
            image
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 1))
                .shadow(radius: 10)
                .frame(width: width, height: height, alignment: .center)
        }.sheet(isPresented: $showAboutView) {
            AboutView(isPressed: self.$showAboutView)
        }
    }
}

struct CircleImageStatic: View {
    
    var image: Image
    var height: CGFloat
    var width: CGFloat
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.black, lineWidth: 1))
            .shadow(radius: 10)
            .frame(width: width, height: height, alignment: .center)
    }
}
