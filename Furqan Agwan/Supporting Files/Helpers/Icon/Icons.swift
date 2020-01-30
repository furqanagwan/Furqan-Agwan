import SwifterSwift
import SwiftIcons

struct Icons {
    static let furqan : UIImage = UIImage(named: "Furqan_Agwan_Color")!
    static let Github = UIImage(icon: .ionicons(.socialGithub), size: IconSize.iconSmall, textColor: Color.gray, backgroundColor: .clear)
    static let LinkedIn = UIImage(icon: .ionicons(.socialLinkedin), size: IconSize.iconSmall, textColor: Color(hexString: "0077b5")!, backgroundColor: Color.clear)
    static let Twitter = UIImage(icon: .ionicons(.socialTwitter), size: IconSize.iconSmall, textColor: Color(hexString: "1da1f2")!, backgroundColor: Color.clear)
    static let Reddit = UIImage(icon: .ionicons(.socialReddit), size: IconSize.iconSmall, textColor: Color(hexString: "ff4500")!, backgroundColor: Color.clear)
}

struct IconSize {
    static let iconSmall = CGSize(width: 45, height: 45)
}
