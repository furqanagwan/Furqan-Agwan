import SwiftUI
import SwifterSwift

struct EducationView: View {
    let screenBounds = UIScreen.main.bounds
    let educationText: String = "Education"
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View {
        List{
            ScrollView (.vertical) {
                informationView(viewTitle: educationText)
                VStack(spacing: 5) {
                    CardView(instituteColor: Color(educationColours.DMU_SECONDARY!), instituteName: "De Montfort University", instituteRole: "BSc Computer Science", instituteImage: educationImages.DEMONTFORTUNIVERSITY, yearsAtInstitute: 3)
                    CardView(instituteColor: Color(educationColours.BEAUCHAMP_THIRD), instituteName: "Beauchamp College", instituteRole: "A-Levels", instituteImage: educationImages.BEAUCHAMPCOLLEGE, yearsAtInstitute: 2)
                    CardView(instituteColor: Color(educationColours.MANORHIGH_PRIMARY!), instituteName: "Manor High School", instituteRole: "GCSE", instituteImage: educationImages.MANOR_HIGH_SCHOOL, yearsAtInstitute: 4)
                }
            }
        }.frame(maxWidth: .infinity)
    }
}
