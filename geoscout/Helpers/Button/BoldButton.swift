

import SwiftUI

struct BoldButton: View {
    var action: () -> Void
    var color: Color = .GSDarkText
    var title: String = "Sign up"
    var size: CGFloat = 50

    var body: some View {
        HStack {
            Button(action: action) {
                Text(title)
                    .modifier(GSTextStyle(textColor: color, fontWeight: .bold, fontSize: size))
            }
        }
    }
}

struct BoldButton_Previews: PreviewProvider {
    static var previews: some View {
        BoldButton(action: {})
    }
}
