

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var navigator: ScreenNavigator

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("gescout")
                    .modifier(GSTextStyle(textColor: .GSPurpleGray, fontWeight: .bold, fontSize: 60))
                VStack(spacing: 20) {
                    NavigationLink(destination: RegistrationView()) {
                        SemiBoldText(text: "REGISTER", textColor: .white, fontSze: 16)
                            .modifier(GSRoundedTextStyle())
                            .padding([.leading, .trailing], 40)
                    }
                    NavigationLink(destination: LoginView()) {
                        SemiBoldText(text: "LOGIN", textColor: .GSPrimary, fontSze: 16)
                            .modifier(GSBorderedStyle())
                            .padding([.leading, .trailing], 40)
                    }

                }.padding(.bottom, 140)
                    .padding(.top, 120)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().environmentObject(ScreenNavigator())
    }
}
