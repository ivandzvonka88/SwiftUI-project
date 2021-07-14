

import SwiftUI

struct ScoutYourFriendView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var name: String = ""
    
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
                    Image("Friend")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -20)
                    VStack(alignment: .center) {
                        MediumText(text: "Scout your friend", textColor: .GSPrimary, fontSze: 24)
                            .multilineTextAlignment(.leading)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.top, 30)
                            .padding(.leading, 30)
                            .padding(.trailing, 60)
                        HStack(alignment: .center, spacing: 20) {
                            RegularText(text: "Girl", textColor: .white, fontSze: 24)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(width: 150, height: 50, alignment: .center)
                                .background(Color.GSPrimary)
                                .cornerRadius(10)
                            RegularText(text: "Boy", textColor: .GSButtonText, fontSze: 24)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(width: 150, height: 50, alignment: .center)
                                .background(Color.GSButtonBG)
                                .cornerRadius(10)
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, 15)
                        //Spacer()
                        VStack(alignment: .leading, spacing: 20) {
                        TextField("Name", text: $name, onEditingChanged: { changed in
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
                        .border(Color.GSLightText)
                        }
                        .fixedSize()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding([.leading, .trailing], 60)
                        //.background(Color.black)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color.init(hex: "#FDFBF5"))
                    .cornerRadius(40, corners: [.topLeft, .topRight])
                    .hideNavigationBar()
                    .padding(.top, -50)
                    
                }
            }.padding(.bottom, 0)
            NavigationLink(destination: SharelinkView()) {
                SemiBoldText(text: "SCOUT", textColor: .white, fontSze: 16)
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

struct ScoutYourFriendView_Previews: PreviewProvider {
    static var previews: some View {
        ScoutYourFriendView().environmentObject(ScreenNavigator())
    }
}

struct ScoutYourFriendInstructionView: View {
    var body: some View {
        VStack(alignment: .center) {
            MediumText(text: "Becoming a model How it works", textColor: .white, fontSze: 24)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.top, 50)
                .padding(.leading, 30)
                .padding(.trailing, 60)
            MediumText(text: instructions, textColor: .white, fontSze: 16)
                .padding(.top, 30)
                .padding(.leading, 30)
                .padding(.trailing, 60)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 500)
        .background(Color.GSPrimary)
        .cornerRadius(40, corners: [.topLeft, .topRight])
        .hideNavigationBar()
    }
}
