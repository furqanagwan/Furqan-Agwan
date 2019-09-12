import SwiftUI
import SwifterSwift

struct EmploymentView: View {
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false){
                RoundedCard(logoImage: Image("BAE"), rectangleRadius: 20, height: 350, width: 325, title: "BAE Systems", subtitle: "Software Engineer")
                RoundedCard(logoImage: Image(systemName: "BAE"), rectangleRadius: 20, height: 350, width: 325, title: "BAE Systems", subtitle: "Software Engineer")
                RoundedCard(logoImage: Image(systemName: "BAE"), rectangleRadius: 20, height: 350, width: 325, title: "BAE Systems", subtitle: "Software Engineer")
            }
        }
    }
}

struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}
