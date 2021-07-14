

import SwiftUI

struct ForgotPasswordView: View {
    @State var email: String = ""
    @Environment(\.presentationMode) var presentation

    var body: some View {
        NavigationView.init {
            ScrollView(.vertical, showsIndicators: false) {
                NavigationBar()
                    .frame(height: 80)
                VStack(alignment: .leading, spacing: 10) {
                    Text("Password\nforgot")
                        .modifier(GSTextStyle(fontWeight: .bold, fontSize: 34))
                    TextField("Email", text: $email, onEditingChanged: { changed in
                        print("Username onEditingChanged - \(changed)")
                           }) {
                        print("Username onCommit")
                    }.padding(.top, 40)
                    Divider()
                    HStack {
                        Text("PW Forgot")
                            .modifier(GSTextStyle(fontWeight: .bold, fontSize: 24))
                        Spacer()
                        Button(action: {}) {
                            Image("forwardIcon")
                        }
                        .buttonStyle(CircularButtonStyle(color: .GSPrimary, padding: 30))

                    }.padding(.top, 50)
                    HStack {
                        NavigationLink(destination: RegistrationView()) {
                            Text("Sign up")
                                .modifier(GSTextStyle(fontWeight: .bold, fontSize: 14))
                        }
                        Spacer()
                        NavigationLink(destination: LoginView()) {
                            Text("Sign in")
                                .modifier(GSTextStyle(fontWeight: .bold, fontSize: 14))
                        }

                    }.padding(.top, 50)
                }.padding()
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
