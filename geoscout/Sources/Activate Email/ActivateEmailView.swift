

import SwiftUI

struct ActivateEmailView: View {
    @State var selection: Int? = 0
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar(showMore: true)
                .frame(height: 80)
            VStack(alignment: .center, spacing: 10) {
                Image("Email")
                    .padding(.top, -30)
                Group {
                    Text("Activate \n your email")
                        .modifier(GSTextStyle(fontWeight: .bold, fontSize: 23))
                        .multilineTextAlignment(.center)
                    RegularText(text: "You must confirm your e-mailadres to get full access. That way we are sure that to get in touch with you!", textColor: .GSDarkText, fontSze: 13)
                        .padding(.top, 40)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .multilineTextAlignment(.center)
                    RegularText(text: "Also check your spam-box.", textColor: .GSDarkText, fontSze: 13)
                        .padding(.top, 30)
                }
                Spacer()

                VStack(spacing: 20) {
                    NavigationLink(destination: MenuView()) {
                        SemiBoldText(text: "RESEND EMAIL", textColor: .white, fontSze: 16)
                            .modifier(GSRoundedTextStyle(color: .GSOrange, height: 50, cornerRadius: 25))
                            .padding([.leading, .trailing], 10)
                    }

                    NavigationLink(destination: MenuView()) {
                        SemiBoldText(text: "CONTINUE TO SITE ", textColor: .white, fontSze: 16)
                            .modifier(GSRoundedTextStyle(color: .GSPrimary, height: 50, cornerRadius: 25))
                            .padding([.leading, .trailing], 10)
                    }
                }.padding(.top, 30)

            }.padding()
        }
        .hideNavigationBar()
    }
}

struct ActivateEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ActivateEmailView()
    }
}
