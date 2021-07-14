
import SwiftUI

struct InvitationView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
            .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    MediumText(text: "You havent got any invitations", textColor: .GSLightText, fontSze: 30)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.center)
                        .padding(.top, 0)
                    MediumText(text: "Put relevant information here", textColor: .GSLightText, fontSze: 16)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.center)
                        .padding(.top, 100)
                }
            }
            //.padding(.bottom, 0)
            NavigationLink(destination: ModelingAgenciesView()) {
                RegularText(text: "READ ABOUT REJECTION", textColor: .GSLightText, fontSze: 16)
                    .modifier(GSRoundedTextStyle1())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -150)
            NavigationLink(destination: ModelingAgenciesView()) {
                SemiBoldText(text: "SCOUT A FRIEND", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }
        .hideNavigationBar()
        .background(Color.init(hex: "#FFCA99"))
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView().environmentObject(ScreenNavigator())
    }
}
