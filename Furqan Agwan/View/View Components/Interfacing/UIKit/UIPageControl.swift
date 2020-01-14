import Foundation
import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var curretIndex : Int = 0

    func makeUIView(context: UIViewRepresentableContext<PageControl>) -> UIPageControl {
        let Page = UIPageControl()
        Page.currentPageIndicatorTintColor = UIColor.white
        Page.pageIndicatorTintColor = UIColor.lightGray
        Page.numberOfPages = 3
        
        return Page
    }
    
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<PageControl>) {
        uiView.currentPage = curretIndex
    }

}
