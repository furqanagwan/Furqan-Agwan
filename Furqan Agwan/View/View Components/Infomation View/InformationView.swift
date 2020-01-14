import Foundation
import SwiftUI

//Information View
struct informationView: View {
    let viewTitle: String
    var body: some View{
        
        HStack(alignment: VerticalAlignment.center, spacing: 150) {
            VStack(alignment: .leading, spacing: 5) {
    Text(getCurrentDayString())
        .font(.system(size: 15))
        .foregroundColor(Color.gray)
        .multilineTextAlignment(.leading)
                Text(viewTitle)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .multilineTextAlignment(.leading)
            }.frame(maxWidth: .infinity)
            VStack(alignment: .trailing){
                CircleImage(image: Image("Furqan Agwan"), height: 40, width: 40)
            }.padding(.trailing, 10)
            
        }.frame(maxWidth: .infinity)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        informationView(viewTitle: "Employment")
            .previewLayout(.fixed(width: 500, height: 100))
    }
}

func getCurrentDayString() -> String {
      let dateObject :  Date = Date()
      let currentDay : String = dateObject.dayName() + " " +  dateObject.day.string + " " + dateObject.monthName()
      return currentDay
  }
