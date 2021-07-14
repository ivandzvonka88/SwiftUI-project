

import SwiftUI

struct FullScreenImageView: View {
    var imageName: String
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            NavigationBar(showMore: true)
                .frame(height: 60)
                .background(Color.GSBackground)
            ScrollView {
                VStack {
                    Image(imageName)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .clipped()
                        .scaledToFill()
                }
            }
            .hideNavigationBar()
        }.background(BGColor())
    }
}

struct FullScreenImageView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenImageView(imageName: "FullScreenModel")
    }
}
