import SwiftUI

struct AboutView: View {
    
    @State var isPressed: Bool = false
    let userTitle: String = "Account"
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    userlistCell(cellImageName: "Furqan Agwan", cellName: "Furqan Agwan", additionalInfo: "furqankadri@gmail.com")
                }
                Section(header: Text("Social"), content: {
                    userlistCell(cellImageName: "", cellName: "GitHub", additionalInfo: "furqanagwan")
                    userlistCell(cellImageName: "", cellName: "LinkedIn", additionalInfo: "Furqan Agwan")
                    userlistCell(cellImageName: "", cellName: "Twitter", additionalInfo: "@FurqanKadri")
                    userlistCell(cellImageName: "", cellName: "GitHub", additionalInfo: "furqanagwan")
                })
            }
            .navigationBarTitle(Text(userTitle), displayMode: .inline)
        }.listStyle(GroupedListStyle())
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
