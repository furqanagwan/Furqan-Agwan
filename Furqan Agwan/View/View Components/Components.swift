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
    var rectangleRadius: CGFloat
    var height: CGFloat
    var width: CGFloat
    var title: String
    var subtitle: String
    
    var body: some View{
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: rectangleRadius).foregroundColor(.white)
                HStack{
                    logoImage.resizable().scaledToFit().frame(width: 200, height: 200, alignment: .center)
                }
                HStack{
                    
                    VStack(alignment: .leading, spacing: 3){
                        Text(verbatim: title).font(.title).fontWeight(.bold).foregroundColor(.black).multilineTextAlignment(.leading)
                        Text(verbatim: subtitle).font(.subheadline).fontWeight(.medium).foregroundColor(.black).multilineTextAlignment(.leading)
                      
                    }.padding(.trailing, 10)
                }.position(x: 70, y: 305)
            }.frame(width: width, height: height, alignment: .center)
        }.frame(width: width, height: height, alignment: .center)
    }
}


struct openBubble: View{
    
    var title: String
    var body: some View{
        
        ZStack{
             RoundedRectangle(cornerRadius: 15).foregroundColor(Color.black).frame(width: 70, height: 30, alignment: .center)
            Text(verbatim: title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }
       

    }
}


//struct  RoundedCardDetail: View {
//
//
//    var body: some View{
//        VStack {
//            ZStack{
//                RoundedRectangle(cornerRadius: 20).foregroundColor(.red)
//
//            }
//        }
//    }
//}


struct openBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        openBubble(title: "OPEN")
    }
}


struct RoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCard(logoImage: Image("BAE"), rectangleRadius: 20, height: 350, width: 300, title: "NEXT LTD", subtitle: "Sales Assistant")
    }
}
//struct RoundedCardDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoundedCardDetail()
//    }
//}
