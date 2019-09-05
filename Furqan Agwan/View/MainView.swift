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
            
            
            
            AboutView()
                .tabItem {CustomTab(tabName: "About", tabImage: UIImage(systemName: "person.fill")!)
                    
            }
            .tag(3)
        }.accentColor(Color.red)
    }
}




struct CustomTab: View{
    
    var tabName: String
    var tabImage: UIImage
    
    var body: some View{
        
        VStack {
            Text(verbatim: tabName)
            Image(uiImage: tabImage)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}