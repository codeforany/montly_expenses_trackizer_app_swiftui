//
//  UIExtension.swift
//  Trackizer
//
//  Created by CodeForAny on 11/07/23.
//

import SwiftUI

enum Inter: String {
    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case semibold = "Inter-SemiBold"
    case bold = "Inter-Bold"
}

extension Font {
    
    static func customfont(_ font: Inter, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
    }
    
    static func heightPer(per: Double) -> Double {
        return screenHeight * per
    }
    
    static var topInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }
    
    static var bottomInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
    static var horizontalInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }
    
    static var verticalInsets: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
}

extension Color {
    
    static var primary: Color {
        return Color(hex: "5E00F5")
    }
    static var primary500: Color {
        return Color(hex: "7722FF")
    }
    static var primary20: Color {
        return Color(hex: "924EFF")
    }
    static var primary10: Color {
        return Color(hex: "AD7BFF")
    }
    static var primary5: Color {
        return Color(hex: "C9A7FF")
    }
    static var primary0: Color {
        return Color(hex: "E4D3FF")
    }
    
    static var secondaryC: Color {
        return Color(hex: "FF7966")
    }
    
    static var secondary50: Color {
        return Color(hex: "FFA699")
    }
    
    static var secondary0: Color {
        return Color(hex: "FFD2CC")
    }
    
    static var secondaryG: Color {
        return Color(hex: "00FAD9")
    }
    
    static var secondaryG50: Color {
        return Color(hex: "7DFFEE")
    }
    
    static var grayC: Color {
        return Color(hex: "0E0E12")
    }
    static var gray80: Color {
        return Color(hex: "1C1C23")
    }
    static var gray70: Color {
        return Color(hex: "353542")
    }
    static var gray60: Color {
        return Color(hex: "4E4E61")
    }
    static var gray50: Color {
        return Color(hex: "666680")
    }
    static var gray40: Color {
        return Color(hex: "83839C")
    }
    static var gray30: Color {
        return Color(hex: "A2A2B5")
    }
    static var gray20: Color {
        return Color(hex: "C1C1CD")
    }
    
    static var gray10: Color {
        return Color(hex: "E0E0E6")
    }
    
    static var primaryText: Color {
        return Color.white
    }
    
    static var secondaryText: Color {
        return .gray60
    }
    
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB(12 -bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
