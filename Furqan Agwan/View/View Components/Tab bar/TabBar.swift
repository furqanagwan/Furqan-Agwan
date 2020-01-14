import Foundation
import SwiftUI

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
