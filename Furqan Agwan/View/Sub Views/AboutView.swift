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
                    NavigationLink(destination: SafariView(linkURL: URL(string: URLS.GitHub)!)) {
                        userlistCellOptions(cellImage: Icons.Github, cellName: "Github", additionalInfo: "furqanagwan")
                    }
                    NavigationLink(destination: SafariView(linkURL: URL(string: URLS.LinkedIn)!)) {
                        userlistCellOptions(cellImage: Icons.LinkedIn, cellName: "LinkedIn", additionalInfo: "Furqan Agwan")
                    }
                })
                
                Section (header: Text("Social"), content:  {
                    NavigationLink(destination: SafariView(linkURL: URL(string: URLS.Twitter)!)) {
                        userlistCellOptions(cellImage: Icons.Twitter, cellName: "Twitter", additionalInfo: "@FurqanKadri")                    }
                    NavigationLink(destination: SafariView(linkURL: URL(string: URLS.Reddit)!)) {
                        userlistCellOptions(cellImage: Icons.Reddit, cellName: "Reddit", additionalInfo: "Nightwig7")
                    }
                })
            }
            .navigationBarTitle(Text(userTitle), displayMode: .inline)
            .navigationBarItems(trailing: doneView(isOpened: $isPressed))
        }.listStyle(GroupedListStyle())
            .onAppear {
            UINavigationBar.appearance().tintColor = UIColor(light: .black, dark: .white)
        }
    }
}

