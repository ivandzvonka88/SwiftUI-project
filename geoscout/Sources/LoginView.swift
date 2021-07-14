

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var selection: Int? = 0
    @Environment(\.presentationMode) var presentation
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar()
                .frame(height: 80)
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome\nback")
                    .modifier(GSTextStyle(fontWeight: .bold, fontSize: 34))
                TextField("Email", text: $email, onEditingChanged: { changed in
                    print("Username onEditingChanged - \(changed)")
                               }) {
                    print("Username onCommit")
                }.padding(.top, 40)
                Divider()
                TextField("Password", text: $password, onEditingChanged: { changed in
                    print("Username onEditingChanged - \(changed)")
                                            }) {
                    print("Username onCommit")
                }.padding(.top, 20)
                Divider()
                HStack {
                    Text("Sign in")
                        .modifier(GSTextStyle(fontWeight: .bold, fontSize: 24))
                    Spacer()

                    NavigationLink(destination: MenuView()) {
                        ForwardIcon(height: 70, cornerRadius: 35)
                    }.foregroundColor(.white)
                }.padding(.top, 50)
                HStack {
                    NavigationLink(destination: RegistrationView(), tag: 2, selection: $selection) {
                        BoldButton(action: {
                            self.selection = 2
                            }, title: "Sign up", size: 14)
                    }

                    Spacer()
                    NavigationLink(destination: ForgotPasswordView(), tag: 3, selection: $selection) {
                        BoldButton(action: {
                            self.selection = 3
                            }, title: "Forgot password?", size: 14)
                    }

                }.padding(.top, 50)
            }.padding()
                .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
