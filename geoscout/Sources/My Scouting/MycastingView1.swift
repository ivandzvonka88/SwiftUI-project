
import SwiftUI

struct MycastingView1: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
            .frame(height: 60)
                .padding([.leading, .trailing], 0)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    
                    MediumText(text: "My casting", fontSze: 27)
                        .padding(.trailing, 30)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 0)
                    RegularText(text: "We will introduce you too the agencies on", textColor: .GSDarkText, fontSze: 16)
                        .padding(.trailing, 0)
                        .padding(.leading, 0)
                        .padding(.top, 30)
                        .multilineTextAlignment(.leading)
                    SemiBoldText(text: "Monday and get your answer on saturday!", textColor: .GSDarkText, fontSze: 16)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .multilineTextAlignment(.center)
                        .padding(.top, 0)
                    Image("Mycasting")
                        .renderingMode(.original)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(width: 380, height: 700)
                    .scaledToFit()
                    .padding([.leading, .trailing], 0)
                        .padding(.top, -100)
                    //ScrollView(.horizontal, showsIndicators: true) {
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
                        }
                    .padding([.leading, .trailing], 0)
                    .padding(.top, -500)
                    /*}
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, -500)
                    .offset(x: -150)*/
                }
            }
            //.padding(.bottom, 0)
            NavigationLink(destination: MycastingView2()) {
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

struct MycastingView1_Previews: PreviewProvider {
    static var previews: some View {
        MycastingView1().environmentObject(ScreenNavigator())
    }
}
