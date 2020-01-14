import SwiftUI

struct MainView: View {
    
    @State private var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection){
            EducationView().tabItem {
                    CustomTab(tabName: "Education", tabImage: UIImage(systemName: "book.fill")!)
            }.tag(1)
            EmploymentView().tabItem {
                    CustomTab(tabName: "Employment", tabImage: UIImage(systemName: "briefcase.fill")!)
            }.tag(2)
        }
        .edgesIgnoringSafeArea(.top)
        .statusBar(hidden: true)
        .accentColor(.primary)
    }
}
struct MainApplication_Preview: PreviewProvider {
    static var previews: some View {
        Group{
            MainView().environment(\.colorScheme, .dark)
            MainView()
        }
    }
}

