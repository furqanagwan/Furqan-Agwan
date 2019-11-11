import SwiftUI
import SwifterSwift

struct EducationView: View {
    
    let educationText: String = "Education"
    
    var body: some View {
        
        NavigationView {
            List {
                Text("Hello")
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
