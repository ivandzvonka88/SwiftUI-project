

import SwiftUI

struct CircularButton: View {
    var body: some View {
        Button(action: {}) {
            Image("forwardIcon")
        }.buttonStyle(CircularButtonStyle(color: .GSPrimary, padding: 30))
    }
}

struct ForwardIcon: View {
    var height: CGFloat = 90
    var cornerRadius: CGFloat = 45
    var backgroundColor: Color = .GSPrimary
    var foregroundColor: Color = Color.white
    var body: some View {
        Image("forwardIcon")
            .frame(width: height)
            .frame(height: height)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius)
            .clipped()
    }
}

struct CircularButton_Previews: PreviewProvider {
    static var previews: some View {
        ForwardIcon()
    }
}

struct BorderedButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Hello how ")
        }.buttonStyle(GSBorderedButtonStyle())
    }
}

struct BB: View {
    var body: some View {
        SemiBoldText(text: "Hello", textColor: .black)
            .modifier(GSBorderedStyle())
    }
}

struct CircularButtonStyle: ButtonStyle {
    var color: Color
    var padding: CGFloat
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(padding)
            .background(color)
            .clipShape(Circle())
            .clipped()
    }
}

struct GSTextFielsStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .frame(height: 55)
            .padding(.leading, 10)
            .textFieldStyle(PlainTextFieldStyle())
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
    }
}

struct GSRoundedButtonStyle: ButtonStyle {
    var color: Color = .GSPrimary
    var height: CGFloat = 55
    var cornerRadius: CGFloat = 22
    var textColor: Color = Color.white
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(height: height)
            .background(color)
            .cornerRadius(cornerRadius)
            .clipped()
    }
}

struct GSBorderedButtonStyle: ButtonStyle {
    var borderColor: Color = .GSPrimary
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 25
    var textColor: Color = Color.white
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(height: height)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(borderColor, lineWidth: 2)
            )
            .foregroundColor(textColor)
            .clipped()
    }
}

struct GSRoundedTextStyle: ViewModifier {
    var color: Color = .GSPrimary
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 25

    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: height)
            .background(color)
            .cornerRadius(cornerRadius)
            .clipped()
    }
}

struct GSRoundedTextStyle1: ViewModifier {
    var color: Color = .GSButtonBG1
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 25

    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: height)
            .background(color)
            .cornerRadius(cornerRadius)
            .clipped()
    }
}

struct GSBorderedStyle: ViewModifier {
    var borderColor: Color = .GSPrimary
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 25
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .strokeBorder(borderColor, lineWidth: 2)
            )
            .clipped()
    }
}

struct MyRoundedBorder<S>: ViewModifier where S: ShapeStyle {
    let shapeStyle: S
    var width: CGFloat = 1
    let cornerRadius: CGFloat

    init(_ shapeStyle: S, width: CGFloat, cornerRadius: CGFloat) {
        self.shapeStyle = shapeStyle
        self.width = width
        self.cornerRadius = cornerRadius
    }

    func body(content: Content) -> some View {
        return content.overlay(RoundedRectangle(cornerRadius: cornerRadius).strokeBorder(shapeStyle, lineWidth: width))
    }
}
