import SwiftUI
import Foundation

public enum Theme {
    public static var currentTheme  = Theme.theme1
    case theme1
    case theme2
}

public extension Theme {
    var numberBackgroundColor: Color {
        let uiColor = UIColor.numberBackgroundColor(theme: self)
        return Color(uiColor: uiColor)
    }
    
    var numberFontColor: Color {
        let uiColor = UIColor.numberForegroundColor(theme: self)
        return Color(uiColor: uiColor)
    }
    
    var operationBackgroundColor: Color {
        let uiColor = UIColor.operationBackgroundColor(theme: self)
        return Color(uiColor: uiColor)
    }
    
    var operationFontColor: Color {
        let uiColor = UIColor.operationForegroundColor(theme: self)
        return Color(uiColor: uiColor)
    }
    
    var success: Color {
        let uiColor = UIColor.sucessfontColor(theme: self)
        return Color(uiColor: uiColor)
    }
    
    var error: Color {
        let uiColor = UIColor.errorfontColor(theme: self)
        return Color(uiColor: uiColor)
    }
}

extension UIColor {
    static func numberBackgroundColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("numberBackgroundColor",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .black
    }
    
    static func sucessfontColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("sucess",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .green
    }
    
    static func errorfontColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("errorView",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .darkGray
    }
    
    static func numberForegroundColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("numberForegroundColor",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .white
    }
    
    static func operationBackgroundColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("operationBackgroundColor",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .black
    }
    
    static func operationForegroundColor(theme: Theme) -> UIColor {
        let assetName = UIColor.assetName("operationForegroundColor",
                                          theme: theme)
        return UIColor(named: assetName, in: .module, compatibleWith: nil) ?? .white
    }
    
    private static func assetName(_ name: String, theme: Theme) -> String {
        return "\(theme)/" + name
    }
}

