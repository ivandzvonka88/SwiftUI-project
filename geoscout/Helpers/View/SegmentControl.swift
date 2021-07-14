

import SwiftUI

struct GenderSelectionControl: View {
    @State var selectionIndex = 0

    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            Button(action: {}) {
                Text("FEMALE")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(selectionIndex == 0 ? .white : .GSDarkText)
                    .background(selectionIndex == 0 ? .GSPrimary : Color.clear)
            }
            .cornerRadius(5)
            .clipped()
            Button(action: {}) {
                Text("MALE")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(selectionIndex == 1 ? .white : .GSDarkText)
                    .background(selectionIndex == 1 ? .GSPrimary : Color.clear)
            }
        }

        .cornerRadius(5)
        .clipped()
    }
}

struct SegmentControl_Previews: PreviewProvider {
    static var previews: some View {
        GenderSelectionControl()
    }
}
