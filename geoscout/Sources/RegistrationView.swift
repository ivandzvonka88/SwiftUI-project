

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""

    @State var selectedGenderIndex: Int = 0
    @EnvironmentObject var navigator: ScreenNavigator
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            NavigationBar()
                .frame(height: 80)
            VStack(alignment: .leading, spacing: 10) {
                Group {
                    Text("Register for free and")
                        .modifier(GSTextStyle(textColor: .GSDarkText, fontWeight: .bold, fontSize: 18))
                    HStack {
                        Text("Scout")
                            .modifier(GSTextStyle(fontWeight: .bold, fontSize: 34))
                        RegularText(text: "to get", fontSze: 34)
                    }.padding(.top, 6)
                    Text("scouted!")
                        .modifier(GSTextStyle(fontWeight: .bold, fontSize: 34))
                        .padding(.top, -12)
                    GenderSelectionControl().padding(.top, 30)
                }
                Group {
                    TextField("First Name", text: $firstName, onEditingChanged: { changed in
                        print("Username onEditingChanged - \(changed)")
                            }) {
                        print("Username onCommit")
                    }.padding(.top, 40)
                    Divider()
                    TextField("Last Name", text: $lastName, onEditingChanged: { changed in
                        print("Username onEditingChanged - \(changed)")
                                         }) {
                        print("Username onCommit")
                    }.padding(.top, 20)
                    Divider()
                }
                Group {
                    HStack {
                        RegularText(text: "Birthday", textColor: .GSDarkText, fontSze: 13)
                        Spacer()
                        RegularText(text: "MM-DD-YYYY", textColor: .GSDarkText, fontSze: 13)
                    }.padding(.top, 5)
                    HStack(spacing: 20) {
                        TextField("", text: $email, onEditingChanged: { changed in
                            print("Username onEditingChanged - \(changed)")
                        }) {
                            print("Username onCommit")
                        }
                        .textFieldStyle(GSTextFielsStyle())
                        .frame(width: 80)
                        TextField("", text: $email, onEditingChanged: { changed in
                            print("Username onEditingChanged - \(changed)")
                                               }) {
                            print("Username onCommit")
                        }
                        .frame(width: 80)
                        .textFieldStyle(GSTextFielsStyle())
                        TextField("", text: $email, onEditingChanged: { changed in
                            print("Username onEditingChanged - \(changed)")
                                               }) {
                            print("Username onCommit")
                        }
                        .textFieldStyle(GSTextFielsStyle())

                    }.padding(.top, 10)
                }

                Group {
                    TextField("Email", text: $firstName, onEditingChanged: { changed in
                        print("Username onEditingChanged - \(changed)")
                                             }) {
                        print("Username onCommit")
                    }.padding(.top, 40)
                    Divider()
                    TextField("Password", text: $lastName, onEditingChanged: { changed in
                        print("Username onEditingChanged - \(changed)")
                                                          }) {
                        print("Username onCommit")
                    }.padding(.top, 20)
                    Divider()
                }
                Group {
                    HStack {
                        CheckBox()
                        MediumText(text: "I agree with TOS, privacy", textColor: .GSDarkText, fontSze: 12)
                    }
                    HStack {
                        Text("Sign up")
                            .modifier(GSTextStyle(fontWeight: .bold, fontSize: 24))
                        Spacer()
                        NavigationLink(destination: ActivateEmailView(), tag: .activateAccount, selection: $navigator.pushedScreen) {
                            Button(action: {
                                self.navigator.pushedScreen = .activateAccount
                             }) {
                                Image("forwardIcon")
                            }
                            .buttonStyle(CircularButtonStyle(color: .GSPrimary, padding: 30))
                        }.foregroundColor(.white)
                    }.padding(.top, 10)
                }.padding(.top, 20)

            }.padding()
        }
        .hideNavigationBar()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView().environmentObject(ScreenNavigator())
    }
}
