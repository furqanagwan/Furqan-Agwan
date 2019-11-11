import SwiftUI

struct CircleImage: View {
    
    var image: Image
    var height: CGFloat
    var width: CGFloat
    @State var showAboutView: Bool = false
    
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
            AboutView()
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
        CircleImage(image: Image("Furqan Agwan"), height: 45, width: 45)
    }
}


struct navigationBarRightItemDone: View{
    
    @Environment (\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View{
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Done")
                .foregroundColor(Color.blue)
        }
    }
}

struct userlistCell: View{
    
    let cellImageName: String
    let cellName: String
    let additionalInfo: String
    
    var body: some View{
        
        HStack(alignment: VerticalAlignment.center, spacing: 0) {
            VStack{
                CircleImageStatic(image: Image(cellImageName), height: 60, width: 60)
            }.padding(.trailing, 15)
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 3, content: {
                Text(cellName)
                Text(additionalInfo)
                    .foregroundColor(Color.gray)
            })
        }
        
    }
}



struct View_Previews: PreviewProvider {
    static var previews: some View {
        userlistCell(cellImageName: "Furqan Agwan" , cellName: "Furqan Agwan", additionalInfo: "furqankadri@gmail.com")
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
