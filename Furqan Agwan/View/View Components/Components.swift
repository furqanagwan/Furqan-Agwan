import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.black, lineWidth: 1))
        .shadow(radius: 10)
            .frame(width: 80, height: 80, alignment: .center)
    }
}


struct RoundedCard: View {
   
    var logoImage: Image
    var backgroundColor: Color
    var rectangleRadius: CGFloat
    var height: CGFloat
    var width: CGFloat
    var title: String
    var subtitle: String
    
    
    var body: some View{
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: rectangleRadius).foregroundColor(backgroundColor)
                Text(verbatim: title + "\n" + subtitle).foregroundColor(Color.white).multilineTextAlignment(.leading).position(x: 85, y: 310)
                }.shadow(color: backgroundColor, radius: 5)
        }.frame(width: width, height: height, alignment: .center)
    }
}


struct RoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.red, rectangleRadius: 20, height: 350, width: 300, title: "BAE Systems", subtitle: "Software Engineer")
    }
}
