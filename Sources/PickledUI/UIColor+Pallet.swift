
#if !os(macOS)
import UIKit
public extension UIColor {
    
    /// Standardized color pallet for an app
    enum Pallet: String {
        case primary,
        background,
        touch,
        accent,
        text
        
        ///Fallback color of the attribute if it is not defined
        private var defaultColor : UIColor {
            switch self {
            case .primary: return UIColor.yellow
            case .background: return UIColor.lightGray
            case .accent: return UIColor.darkGray
            case .touch: return UIColor.cyan
            case .text: return UIColor.blue
            }
        }
        
        
        /// Gets the color of the attribute
        /// - Important: defaults to default color
        public var color: UIColor {
            if #available(iOS 11.0, *) {
                return UIColor(named: self.rawValue) ?? self.defaultColor
            }
            fatalError()
        }
    }
}
#endif 
