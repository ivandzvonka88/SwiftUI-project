

import SwiftUI

struct MyScoutingView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            GSTitleNavigationBar()
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    Group {
                        Text("My scouting")
                            .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                        Text("You have scouted 3 models\nAnd earned 500 euro.")
                            .modifier(GSTextStyle(textColor: .GSLightText, fontWeight: .regular, fontSize: 16))
                            .multilineTextAlignment(.center)
                            .padding(.top, 22)
                        HStack {
                            ScoutOption(title: "2 SCOUTED", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                            Spacer()
                            ScoutOption(title: "1 SIGNED", imageName: "Pher", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 41.62))
                        }.padding([.leading, .trailing], 50)
                            .padding(.top, 38)
                    }
                    Divider()
                        .background(Color.GSDarkText)
                        .padding([.leading, .trailing], 35)
                        .padding(.top, 30)

                    HStack {
                        ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                        Spacer()
                        Text("JANE DOE")
                            .modifier(GSTextStyle(textColor: .GSDarkText, fontWeight: .semibold, fontSize: 14))
                        Spacer()
                        ScoutOption(title: "", imageName: "Attachment", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 20, height: 20))

                    }.padding([.leading, .trailing], 50)
                        .padding(.top, 11.5)
                    Divider()
                        .background(Color.GSDarkText)
                        .padding([.leading, .trailing], 35)
                        .padding(.top, 0)

                    HStack {
                        ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                        Spacer()
                        VStack {
                            Text("JANE DOE")
                                .modifier(GSTextStyle(textColor: .GSDarkText, fontWeight: .semibold, fontSize: 14))
                            Text("Signed to Elite. ")
                                .modifier(GSTextStyle(textColor: .GSPrimary, fontWeight: .medium, fontSize: 14))
                        }
                        Spacer()
                        ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                            .hidden()

                    }.padding([.leading, .trailing], 50)
                        .padding(.top, 11.5)

                    Divider()
                        .background(Color.GSDarkText)
                        .padding([.leading, .trailing], 35)
                        .padding(.top, 0)

                    NavigationLink(destination: ScoutModelView()) {
                        SemiBoldText(text: "SCOUT A MODEL", textColor: .white, fontSze: 16)
                            .modifier(GSRoundedTextStyle())
                            .padding([.leading, .trailing], 40)
                    }.padding(.top, 120)
                }
            }
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct MyScoutingView_Previews: PreviewProvider {
    static var previews: some View {
        MyScoutingView().environmentObject(ScreenNavigator())
    }
}

struct ScoutOption: View {
    var title: String
    var imageName: String
    var imageColor: Color
    var borderColor: Color
    var iconSize: CGSize
    var body: some View {
        VStack {
            VStack {
                Image(uiImage: UIImage(named: imageName)!.withRenderingMode(.alwaysTemplate))
                    .resizable()
                    .foregroundColor(imageColor)
                    .frame(width: iconSize.width, height: iconSize.height, alignment: .center)
            }
            .frame(width: 67, height: 67)
            .modifier(GSCircularBorder(borderColor: borderColor, borderWidth: 1.5))
            Text(title)
                .modifier(GSTextStyle(fontWeight: .medium, fontSize: 14))
        }
    }
}
