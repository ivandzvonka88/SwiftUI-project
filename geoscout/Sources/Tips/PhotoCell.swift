

import SwiftUI
struct PhotoItem {
    var title: String
    var imageName: String
    var screen: Screens
}

struct PhotoCell: View {
    var item: PhotoItem
    var body: some View {
        HStack(spacing: 20) {
            Image(item.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(20)
                .clipped()
                .fixedSize()

            SemiBoldText(text: item.title.uppercased(), textColor: .GSDarkText, fontSze: 13)
            Spacer()
            Image(systemName: "chevron.right")
                .padding(.trailing, 10)
        }
    }
}

struct PhotoCell_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCell(item: .init(title: "Become a model", imageName: "Intro1", screen: .activateAccount))
    }
}
