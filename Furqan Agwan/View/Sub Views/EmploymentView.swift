import SwiftUI

struct EmploymentView: View {
    
    var body: some View {
        VStack{
           HStack{
                Text("Current")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                }
            ScrollView(.horizontal, showsIndicators: false) {
               
                HStack(alignment: .center, spacing: 25){
                    
                    RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.red, rectangleRadius: 20, height: 350, width: 300, title: "BAE Systems", subtitle: "Software Engineer")
                    RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.blue, rectangleRadius: 20, height: 350, width: 300, title: "Leicester City Football Club", subtitle: "Search Steward")
                    RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.red, rectangleRadius: 20, height: 350, width: 300, title: "Hastings Direct", subtitle: "Customer Repersentative")
                    RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.black, rectangleRadius: 20, height: 350, width: 300, title: "Debenhams", subtitle: "Sales Assistant")
                    RoundedCard(logoImage: Image("Furqan Agwan"), backgroundColor: Color.black, rectangleRadius: 20, height: 350, width: 300, title: "Next LTD", subtitle: "Sales Assistant")
                }.padding(.leading, 15)
                    .padding(.trailing, 15)
            }
            
        }
    }
}

struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}
