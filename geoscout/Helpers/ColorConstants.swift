

import SwiftUI
import UIKit

struct UIColors {
    static let primary: UIColor? = UIColor(hexString: "#EE5C23")
    static let darkText: UIColor? = UIColor(hexString: "#707070")
    static let background: UIColor? = UIColor(hexString: "#FDFBF5")
}

extension Color {
    static let GSPrimary: Color = .init(hex: "#EE5C23")
    static let GSDarkText: Color = .init(hex: "#707070")
    static let GSLightText: Color = .init(hex: "#3D3B53")
    static let GSBackground: Color = .init(hex: "#FDFBF5")
    static let GSOrange: Color = .init(hex: "#FFB36C")
    static let GSPurpleGray: Color = .init(hex: "#3D3B53")
    static let GSButtonBG: Color = .init(hex: "#EEEEEE")
    static let GSButtonText: Color = .init(hex: "#ACACAC")
    static let GSButtonBG1: Color = .init(hex: "#EEE9F5")
    static let GSToggleOff: Color = .init(hex: "#DBDBDB")
    static let GSToggleOn: Color = .init(hex: "#FF7903")
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
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
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

extension UIColor {
    convenience init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        switch chars.count {
        case 3: chars = chars.flatMap { [$0, $0] }; fallthrough
        case 6: chars = ["F", "F"] + chars
        case 8: break
        default: return nil
        }
        self.init(red: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                  green: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                  blue: .init(strtoul(String(chars[6...7]), nil, 16)) / 255,
                  alpha: .init(strtoul(String(chars[0...1]), nil, 16)) / 255)
    }
}

struct ColorConstants_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
