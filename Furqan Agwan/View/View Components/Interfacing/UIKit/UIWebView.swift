import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let linkURL: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        
        let SFServicesView = SFSafariViewController(url: linkURL)
        SFServicesView.preferredControlTintColor = UIColor(hexString: "E66E64")
        
        return SFServicesView
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {

    }
}
