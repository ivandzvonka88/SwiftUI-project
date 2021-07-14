

import SwiftUI

struct SemiBoldText: View {
    var text: String
    var textColor: Color = .GSPrimary
    var fontSze: CGFloat = 34

    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .lineLimit(nil)
            .font(.system(size: fontSze, weight: .semibold, design: .default))
    }
}

struct RegularText: View {
    var text: String
    var textColor: Color = .GSPrimary
    var fontSze: CGFloat = 34

    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .font(.system(size: fontSze, weight: .regular, design: .default))
    }
}

struct Test: View {
    var body: some View {
        Image(uiImage: UIImage(named: "Diamond")!.withRenderingMode(.alwaysTemplate))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
            .modifier(GSCircularBorder())
    }
}

struct MediumText: View {
    var text: String
    var textColor: Color = .GSPrimary
    var fontSze: CGFloat = 34

    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .font(.system(size: fontSze, weight: .medium, design: .default))
    }
}

struct BoldText_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

struct GSText: View {
    var text: String
    var textColor: Color = .GSPrimary
    var fontSze: CGFloat = 34

    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .font(.system(size: fontSze, weight: .regular, design: .default))
    }
}

struct GSTextStyle: ViewModifier {
    var textColor: Color = .GSPrimary
    var fontWeight: Font.Weight = .regular
    var fontSize: CGFloat = 14
    func body(content: Content) -> some View {
        content
            .foregroundColor(textColor)
            .font(.system(size: fontSize, weight: fontWeight, design: .default))
    }
}

struct GSCircularBorder: ViewModifier {
    var borderColor: Color = .GSPrimary
    var borderWidth: CGFloat = 2.0
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay(
                Circle()
                    .strokeBorder(borderColor, lineWidth: borderWidth)
            )
    }
}
