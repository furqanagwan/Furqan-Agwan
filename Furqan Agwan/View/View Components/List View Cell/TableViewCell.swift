import SwiftUI

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
