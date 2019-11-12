import SwiftUI
import UIKit
import WebKit

struct CircleImage: View {
    
    @State var showAboutView: Bool = false
    
    var image: Image
    var height: CGFloat
    var width: CGFloat
    
    var body: some View {
        Button(action: {
            self.showAboutView.toggle()
        }) {
            image
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 1))
                .shadow(radius: 10)
                .frame(width: width, height: height, alignment: .center)
        }.sheet(isPresented: $showAboutView) {
            AboutView(isPressed: self.$showAboutView)
        }
    }
}

struct CircleImageStatic: View {
    
    var image: Image
    var height: CGFloat
    var width: CGFloat
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.black, lineWidth: 1))
            .shadow(radius: 10)
            .frame(width: width, height: height, alignment: .center)
    }
}

struct naviagtionBarLeftItem: View {
    var body: some View{
        Text(getCurrentDayString())
            .foregroundColor(Color.gray)
            .multilineTextAlignment(.leading)
    }
}

struct navigationBarRightItem: View{
    var body: some View{
        CircleImage(image: Image("Furqan Agwan"), height: 40, width: 40)
    }
}


struct navigationBarRightItemDone: View{
    
    @Binding var isOpened: Bool
    
    var body: some View{
        Button(action: {
            self.isOpened.toggle()
        }) {
            Text("Done")
                .foregroundColor(Color(UIColor(hexString: "E66E64")!))
        }
    }
}

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

struct userlistCellOptions_Preview: PreviewProvider {
    static var previews: some View {
        userlistCellOptions(cellImage: Icons.Github, cellName: "Furqan Agwan", additionalInfo: "furqankadri@gmail.com")
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
