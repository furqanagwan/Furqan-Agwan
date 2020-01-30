import SwiftUI

struct doneView: View{
    
    @Binding var isOpened: Bool
    
    var body: some View{
        Button(action: {
            self.isOpened.toggle()
        }) {
            Text("Done")
                .foregroundColor(.primary)
        }
    }
}
