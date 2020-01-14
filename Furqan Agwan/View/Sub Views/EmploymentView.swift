import SwiftUI

struct EmploymentView: View {
    
    let employmentText: String = "Employment"
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List{
            ScrollView (.vertical) {
                informationView(viewTitle: employmentText)
                VStack() {
                    CardView(instituteColor: Color(employmentColours.BAE_SECONDARY!), instituteName: "BAE SYSTEMS", instituteRole: "Software Engineer", instituteImage: employmentImages.BAE, yearsAtInstitute: 2)
                    CardView(instituteColor: Color(employmentColours.LCFC_PRIMARY!), instituteName: "Leicester City Football Club", instituteRole: "Search Steward", instituteImage: employmentImages.LCFC, yearsAtInstitute: 2)
                    CardView(instituteColor: Color(employmentColours.HASTINGS_THIRD!), instituteName: "Hastings Direct", instituteRole: "Insurance Broker", instituteImage: employmentImages.HASTINGS_DIRECT, yearsAtInstitute: 1)
                }
            }
        }.frame(maxWidth: .infinity)
    }
}



struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}

