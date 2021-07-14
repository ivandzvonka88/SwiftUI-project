
import SwiftUI

struct MycastingView2: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .padding([.leading, .trailing], 0)
            .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    
                    Image("Mycasting")
                        .renderingMode(.original)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    //.frame(width: 512, height: 743)
                    .scaledToFit()
                    .padding([.leading, .trailing], 0)
                        .padding(.top, 150)
                    MediumText(text: "My casting", fontSze: 27)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                        .padding(.top, -700)
                    RegularText(text: "You are currently being introduced. The casting ends on Saturday 12:00", textColor: .GSDarkText, fontSze: 16)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .padding(.top, -650)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    
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
                    .padding(.top, -500)
                    
                }
            }
            //.padding(.bottom, 0)
            NavigationLink(destination: PlanCastingView()) {
                SemiBoldText(text: "READ INTERVIEWS", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
                .frame(width: 300)
            .padding(.top, -80)
        }
        .hideNavigationBar()
        .background(BGColor())
        .frame(minWidth: 0, maxWidth: .infinity)
        
    }
}

struct MycastingView2_Previews: PreviewProvider {
    static var previews: some View {
        MycastingView2().environmentObject(ScreenNavigator())
    }
}
