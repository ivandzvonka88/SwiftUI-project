

import SwiftUI

struct SharelinkView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var sharelink: String = ""
    
    init() {
        UIScrollView.appearance().bounces = false
    }

    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .background(Color.clear)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    SemiBoldText(text: "Share this link with Jane!", textColor: .GSLightText, fontSze: 30)
                        .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    Image("Sharelink")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -20)
                    SemiBoldText(text: "Earn up to 250 euro*", textColor: .GSPrimary, fontSze: 30)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 200)
                    .padding(.top, -230)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    
                        
                    VStack(alignment: .center, spacing: 20) {
                            TextField("Share link", text: $sharelink, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                            .fixedSize()
                            .frame(width: 200, height: 40)
                            .padding([.leading, .trailing], 30)
                            .background(Color.white)
                            .cornerRadius(5)
                            .multilineTextAlignment(.leading)
                            //.border(Color.GSLightText)
                            Image("Copy")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                                .padding(.top, -53)
                                .padding(.leading, 200)
                        }
                        .padding([.leading, .trailing], 50)
                        .frame(width: 250)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, -150)
                        .background(Color.GSPrimary)
                        //Spacer()
                    RegularText(text: "We will notify you when Jane has submitted her photos and what the outcome is!", textColor: .GSLightText, fontSze: 16)
                        .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, -50)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                }
            }.padding(.bottom, 0)
            
            NavigationLink(destination: MenuView()) {
                SemiBoldText(text: "ANOTHER MODEL", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -120)
        }
        .edgesIgnoringSafeArea(.bottom)
        .hideNavigationBar()
        .background(Color.init(hex: "#FDFBF5"))
    }
}

struct SharelinkView_Previews: PreviewProvider {
    static var previews: some View {
        SharelinkView().environmentObject(ScreenNavigator())
    }
}
