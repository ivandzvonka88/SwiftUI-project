
import SwiftUI

struct NavigationBar: View {
    var showMore: Bool = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        HStack {
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("backArrow")
                    .foregroundColor(.GSPrimary).padding()
            }
            Spacer()
            if showMore {
                Button(action: {}) {
                    Image("ThreeDot")
                        .foregroundColor(.GSPrimary).padding()
                }
                .padding(.trailing, 5)
            }
        }
    }
}

struct NavigationBar1: View {
    var showMore: Bool = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        HStack {
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("backArrow")
                    .foregroundColor(.white).padding()
            }
            
            Spacer()
            if showMore {
                Button(action: {}) {
                    Image("ThreeDot")
                        .foregroundColor(.white).padding()
                }
                .padding(.trailing, 5)
            }
        }
    }
}

struct NavigationBar2: View {
    var showMore: Bool = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        HStack {
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("backArrow")
                    .foregroundColor(.white).padding()
            }
            Spacer()
            if showMore {
                Button(action: {}) {
                    Image("CloseIcon")
                        .foregroundColor(.white).padding()
                }
                .padding(.trailing, 5)
            }
            Spacer()
            if showMore {
                Button(action: {}) {
                    Image("CaseIcon")
                        .foregroundColor(.white).padding()
                }
                .padding(.trailing, 5)
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        GSTitleNavigationBar()
    }
}

struct GSNavigationBar: View {
    var showMore: Bool = true

    @Environment(\.presentationMode) var presentation
    var body: some View {
        HStack {
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("backArrow")
                    .foregroundColor(.GSPrimary).padding()
            }
            Spacer()
            if showMore {
                Button(action: {}) {
                    Image(systemName: "text.justifyleft")
                        .foregroundColor(.GSPrimary).padding()
                }
                .padding(.trailing, 5)
            }
        }
    }
}

struct GSTitleNavigationBar: View {
    var body: some View {
        HStack {
            NavigationLink(destination: MenuView()){
            RegularText(text: "gescout", textColor: .GSPurpleGray, fontSze: 18)
                .padding(.leading, 20)
            }
            Spacer()
            NavigationLink(destination: InfoDashboardView()){
                //Button(action: {}) {
                    Image(systemName: "text.justifyleft")
                        .foregroundColor(.GSPurpleGray).padding()
                //}
                //.padding(.trailing, 5)
            }
        }.frame(height: 70)
    }
}
