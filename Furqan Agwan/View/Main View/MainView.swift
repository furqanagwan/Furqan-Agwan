import SwiftUI

struct MainView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            EducationView()
                .tabItem {
                    CustomTab(tabName: "Education", tabImage: UIImage(systemName: "book.fill")!)
            }
            .tag(1)
            EmploymentView()
                .tabItem {
                    CustomTab(tabName: "Employment", tabImage: UIImage(systemName: "briefcase.fill")!)
            }
            .tag(2)
        }
        .accentColor(.primary)
        .edgesIgnoringSafeArea(.top)
    }
}
struct MainApplicationDefault_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
struct MainApplicationLight_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
            .environment(\.colorScheme, .light)
    }
}

