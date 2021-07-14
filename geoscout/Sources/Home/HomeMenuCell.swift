

import SwiftUI
struct HomeMenuItem {
    var title: String
    var imageName: String
    var screen: Screens
}

struct HomeMenuCell: View {
    var item: HomeMenuItem
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

struct HomeMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenuCell(item: .init(title: "Become a model", imageName: "Intro1", screen: .activateAccount))
    }
}
