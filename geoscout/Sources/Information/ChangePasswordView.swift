

import SwiftUI

struct ChangePasswordView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var notifications: Bool = true
    @State var firstname: String = ""
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                        Text("Change Password")
                            .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                        .padding([.leading, .trailing], 30)
                    Text("Please enter your current password and your new one.")
                        .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                        .padding([.leading, .trailing], 30)
                        .padding([.top, .bottom], 20)
                    Group {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Current Password")
                                        .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                    .padding(.trailing, 30)
                                    .frame(alignment: .leading)
                                SecureField("***********", text: $firstname) {
                                    print("Username onCommit")
                                }
                            
                            }
                            .padding([.leading, .trailing], 30)
                            Image("eyeoff")
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.trailing], 30)
                        Divider()
                        HStack {
                            VStack(alignment: .leading) {
                                Text("New Password")
                                        .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                    .padding(.trailing, 30)
                                    .frame(alignment: .leading)
                                SecureField("***********", text: $firstname) {
                                    print("Username onCommit")
                                }
                            
                            }
                            .padding([.leading, .trailing], 30)
                            Image("eyeoff")
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.trailing], 30)
                        
                    }
                    Spacer()
                    
                    
                }
                
            }
            SemiBoldText(text: "SAVE", textColor: .white, fontSze: 16)
            .modifier(GSRoundedTextStyle())
            .padding([.leading, .trailing], 40)
            .frame(minWidth: 0, maxWidth: .infinity)
                
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView().environmentObject(ScreenNavigator())
    }
}
