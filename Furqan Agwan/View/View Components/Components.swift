import SwiftUI
import UIKit

struct userlistCell: View{
    
    let cellImage: UIImage
    let cellName: String
    let additionalInfo: String
    
    var body: some View{
        
        HStack(alignment: VerticalAlignment.center, spacing: 0) {
            VStack{
                CircleImageStatic(image: Image(uiImage: cellImage), height: 60, width: 60)
            }.padding(.trailing, 15)
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 3, content: {
                Text(cellName)
                Text(additionalInfo)
                    .foregroundColor(Color.gray)
            })
        }
    }
}
struct doneView: View{
    
    @Binding var isOpened: Bool
    
    var body: some View{
        Button(action: {
            self.isOpened.toggle()
        }) {
            Text("Done")
                .foregroundColor(.secondary)
        }
    }
}
struct userlistCellOptions: View{
    
    let cellImage: UIImage
    let cellName: String
    let additionalInfo: String
    
    var body: some View{
        
        HStack(alignment: VerticalAlignment.center, spacing: 0) {
            VStack{
                Image(uiImage: cellImage)
            }
            .padding(.trailing, 15)
            VStack(alignment: HorizontalAlignment.leading, spacing: 3, content: {
                Text(cellName)
                Text(additionalInfo)
                    .foregroundColor(Color.gray)
            })
        }
        
    }
}

