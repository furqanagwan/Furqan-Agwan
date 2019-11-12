import SwiftUI
import SwiftIcons

struct AboutView: View {
    
    @Binding var isPressed: Bool
    let userTitle: String = "About"
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    userlistCell(cellImage: Icons.furqan, cellName: "Furqan Agwan", additionalInfo: "furqankadri@gmail.com")
                }
                Section(header: Text("Work"), content: {
                    NavigationLink(destination: EducationView()) {
                        userlistCellOptions(cellImage: Icons.Github, cellName: "Github", additionalInfo: "furqanagwan")
                    }
                    NavigationLink(destination: EducationView()) {
                        userlistCellOptions(cellImage: Icons.LinkedIn, cellName: "LinkedIn", additionalInfo: "Furqan Agwan")
                    }
                })
                
                Section (header: Text("Social"), content:  {
                    NavigationLink(destination: EducationView()) {
                        userlistCellOptions(cellImage: Icons.Twitter, cellName: "Twitter", additionalInfo: "@FurqanKadri")                    }
                    NavigationLink(destination: EducationView()) {
                        userlistCellOptions(cellImage: Icons.Reddit, cellName: "Reddit", additionalInfo: "Nightwig7")
                    }
                })
            }
            .navigationBarTitle(Text(userTitle), displayMode: .inline)
            .navigationBarItems(trailing: navigationBarRightItemDone(isOpened: $isPressed))
        }.listStyle(GroupedListStyle())
    }
}
