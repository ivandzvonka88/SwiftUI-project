
import SwiftUI

struct CommingSoon: View {
    @State var selection: Int? = 0
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar(showMore: true)
                .frame(height: 80)
            VStack(alignment: .center, spacing: 10) {
                Image("Email")
                    .padding(.top, -30)
                Text("Coming soon")
                    .modifier(GSTextStyle(fontWeight: .bold, fontSize: 60))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .padding(.top, 70)
            }.padding()
        }
        .hideNavigationBar()
    }
}

struct CommingSoon_Previews: PreviewProvider {
    static var previews: some View {
        CommingSoon()
    }
}
