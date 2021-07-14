
import SwiftUI

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
    }
}

extension View {
    func hideNavigationBar() -> some View {
        modifier(HiddenNavigationBar())
    }
}

struct BackGround: View {
    var body: some View {
        Image("BG")
            .resizable()
            .scaledToFill()
            .clipped()
            .edgesIgnoringSafeArea([.trailing])
    }
}

struct BGColor: View {
    var body: some View {
        EmptyView()
            .background(Color.GSBackground)
            .scaledToFill()
            .clipped()
            .edgesIgnoringSafeArea([.top, .bottom])
    }
}
