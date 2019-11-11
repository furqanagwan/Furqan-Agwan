import SwiftUI
import SwifterSwift

struct EmploymentView: View {
    
  let employmentText: String = "Employment"
     
     var body: some View {
         
         NavigationView {
             List {
                 Text("Hello")
             }
             .navigationBarTitle(Text(employmentText), displayMode: .large)
             .navigationBarItems(leading: naviagtionBarLeftItem() , trailing: navigationBarRightItem())
         }
     }
}

struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}
