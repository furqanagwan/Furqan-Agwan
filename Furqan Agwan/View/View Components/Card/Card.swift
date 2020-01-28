import Foundation
import SwiftUI

struct CardView: View{
    
    @State var currentCardPage: Int = 0
    @GestureState var tappedGesture : Bool = false
    
    var instituteColor : Color
    var instituteName :  String
    var instituteRole : String
    var instituteImage: Image
    var yearsAtInstitute: Int
    
    var body: some View{
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                RoundedRectangle(cornerRadius: 25, style: .circular)
                    .foregroundColor(instituteColor)
                    .overlay(
                        VStack{
                            instituteImage.resizable().scaledToFit().frame(width: 325, height: 260, alignment: .center)
                        }
                         , alignment: Alignment.top)
                    .overlay(
                        HStack(alignment: .center, spacing: 0) {
                            Rectangle()
                                .opacity(0.3)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                                
                                .overlay(
                                    VStack(alignment: .leading, spacing: 10, content: {
                                        HStack(spacing: 0) {
                                            Text(verbatim: instituteName)
                                                .fontWeight(.heavy)
                                                .multilineTextAlignment(.leading)
                                        }.padding(.leading, 10)
                                        Text(verbatim: instituteRole)
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                            .padding(.leading, 10)
                                    })
                                        .foregroundColor(Color.white)
                                        .fixedSize(horizontal: true, vertical: false)
                                    ,alignment: .leading)
                                .overlay(
                                    VStack(alignment: .trailing, spacing: 10) {
                                        HStack(alignment: .firstTextBaseline, spacing: 0) {
                                            Text(verbatim: "Years")
                                        }
                                        Text(verbatim: yearsAtInstitute.string)
                                    }
                                    .padding(.trailing, 10)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                    , alignment: .trailing)
                        }
                        .frame(width: 325, height: 85, alignment: .center)
                        ,alignment: .bottom)
            }
            
        }.padding(.top, 30).frame(width: 325, height: 400, alignment: .center)
    }
}


struct CardView_Preview: PreviewProvider {
    static var previews: some View {
        CardView(instituteColor: Color(educationColours.MANORHIGH_PRIMARY!), instituteName: "Manor High School", instituteRole: "GCSE", instituteImage: educationImages.MANOR_HIGH_SCHOOL, yearsAtInstitute: 4)
            .previewLayout(.fixed(width: 500, height: 500))
    }
}


//Animation effect may need to use at later stage onece

//.scaleEffect(tappedGesture ? 0.97 : 1).gesture(LongPressGesture(minimumDuration: 1.0).updating($tappedGesture){ value, state, transcation in
//    state = value})
//    .animation(.easeInOut)
//,
