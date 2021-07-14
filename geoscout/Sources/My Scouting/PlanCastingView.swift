
import SwiftUI

struct PlanCastingView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
            .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    Image("Plancasting")
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .padding([.leading, .trailing], 0)
                        .padding(.top, -20)
                    
                    
                    MediumText(text: "You have got 5 invitations", fontSze: 27)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                        .padding(.top, -250)
                    
                    HStack(spacing: 75){
                        VStack(alignment: .center) {
                            SemiBoldText(text: "models1", textColor: .GSLightText, fontSze: 40)
                                .padding(.trailing, 30)
                                .padding(.leading, 30)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .multilineTextAlignment(.leading)
                            }
                        .padding([.top, .bottom], 50)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 300, height: 300, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(150)
                        /*VStack(alignment: .center) {
                            SemiBoldText(text: "models1", textColor: .GSLightText, fontSze: 40)
                                .padding(.trailing, 30)
                                .padding(.leading, 30)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .multilineTextAlignment(.leading)
                            }
                        .padding([.top, .bottom], 50)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 300, height: 300, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(150)*/
                    }
                    .padding(.top, -50)
                    
                }
            }
            //.padding(.bottom, 0)
            NavigationLink(destination: InvitationView()) {
                RegularText(text: "READ INTERVIEWS", textColor: .GSLightText, fontSze: 16)
                    .modifier(GSRoundedTextStyle1())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -150)
            NavigationLink(destination: InvitationView()) {
                SemiBoldText(text: "PLAN CASTING", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }
        .hideNavigationBar()
        .background(Color.init("#EEE9F5"))
    }
}

struct PlanCastingView_Previews: PreviewProvider {
    static var previews: some View {
        PlanCastingView().environmentObject(ScreenNavigator())
    }
}
