import SwiftUI
import SwifterSwift

struct EducationView: View {
    
    let educationText: String = "Education"
    
    var body: some View {
        
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 5) {
                    CardView(cardColor: Color(educationColours.DMU_PRIMARY!), instituteName: "De Montfort University", employeeJobTitle: "Computer Science", yearsActive: 3)
                    CardView(cardColor: Color(educationColours.BEAUCHAMP_PRIMARY!), instituteName: "Beauchamp College", employeeJobTitle: "A-Levels", yearsActive: 2)
                }
            }
            .navigationBarTitle(Text(educationText), displayMode: .large)
            .navigationBarItems(leading: naviagtionBarLeftItem() , trailing: navigationBarRightItem())
        }
    }
}



func getCurrentDayString() -> String {
    let dateObject :  Date = Date()
    let currentDay : String = dateObject.dayName() + " " +  dateObject.day.string + " " + dateObject.monthName()
    return currentDay
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
