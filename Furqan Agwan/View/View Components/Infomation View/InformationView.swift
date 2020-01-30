import SwiftUI


struct informationView: View {
    let viewTitle: String
    var body: some View{
        
        HStack(alignment: VerticalAlignment.center, spacing: 150) {
            VStack(alignment: .leading, spacing: 5) {
                Text(verbatim: Date().curretDay)
        .font(.system(size: 15))
        .foregroundColor(Color.gray)
        .multilineTextAlignment(.leading)
                Text(viewTitle)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .multilineTextAlignment(.leading)
            }.frame(maxWidth: .infinity)
            VStack(alignment: .trailing){
                CircleImage(image: Image("Furqan_Agwan_Color"), height: 40, width: 40)
            }.padding(.trailing, 10)
            
        }.frame(maxWidth: .infinity)
    }
}
