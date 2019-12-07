import SwiftUI

struct EmploymentView: View {
    
    let employmentText: String = "Employment"
    
    
    var body: some View {
        
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 5) {
                    CardView(cardColor: Color(employmentColours.BAE_SECONDARY!), instituteName: "BAE SYSTEMS AI", employeeJobTitle: "Software Engineer", yearsActive: 2)
                    CardView(cardColor: Color(employmentColours.HASTINGS_SECONDARY!), instituteName: "Hastings Direct", employeeJobTitle: "Insurance Broker", yearsActive: 1.5)
                }
            }
            .navigationBarTitle(Text(employmentText), displayMode: .large)
            .navigationBarItems(leading: naviagtionBarLeftItem() , trailing: navigationBarRightItem())
        }
    }
}

struct CardView: View{
    // var coponentImage: Image
    var cardColor : Color
    var instituteName: String
    var employeeJobTitle: String
    var yearsActive: Double
    
    var body: some View{
        
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                RoundedRectangle(cornerRadius: 25, style: .circular)
                    .foregroundColor(cardColor)
                    .overlay(SubCardView(employeeName: instituteName, employeeJobTitle: employeeJobTitle, yearsActive: yearsActive),alignment: .bottom)
            }
            
        }
        .padding(.top, 30)
        
        .frame(width: 325, height: 400, alignment: .center)
        
    }
}


struct SubCardView: View {
    
    var employeeName: String
    var employeeJobTitle: String
    var yearsActive: Double
    
    var body: some View{
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .opacity(0.3)
                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                .overlay(
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack(spacing: 0) {
                            Text(verbatim: employeeName)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.leading)
                        }.padding(.leading, 10)
                        Text(verbatim: employeeJobTitle)
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
                        Text(verbatim: yearsActive.string)
                    }
                    .padding(.trailing, 10)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    , alignment: .trailing)
        }
        .frame(width: 325, height: 85, alignment: .center)
    }
}

struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}
