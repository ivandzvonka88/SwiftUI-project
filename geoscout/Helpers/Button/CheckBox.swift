

import SwiftUI

struct CheckBox: View {
    @State var isChecked: Bool = false

    func toggle() { isChecked = !isChecked }
    var body: some View {
        Button(action: toggle) {
            HStack {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                    .accentColor(.GSDarkText)
            }
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
