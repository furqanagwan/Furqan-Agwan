import Foundation
import SwiftUI

class HostingController: UIHostingController<MainView> {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
}
