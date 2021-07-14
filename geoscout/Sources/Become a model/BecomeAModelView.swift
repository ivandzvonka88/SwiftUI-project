

import SwiftUI

struct BecomeAModelView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            GSNavigationBar()
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    MediumText(text: "Get seen by top modelling agencies", fontSze: 27)
                        .padding(.trailing, 60)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                    MediumText(text: "Every week we hold digital castings for 10 agencies. They choose the models they like to meet, and plan a casting via Gescout.", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 30)
                        .padding(.leading, 30)
                        .padding(.trailing, 60)
                        .multilineTextAlignment(.leading)
                    Image("EV")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, 20)
                        .padding([.leading, .trailing], 40)
                        .background(Color.GSBackground)
                    VStack(alignment: .center) {
                        NavigationLink(destination: BecomeAModelGuideView()) {
                            ForwardIcon(height: 70, cornerRadius: 35)
                        }.foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, 30)
                }
            }
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct BecomeAModelView_Previews: PreviewProvider {
    static var previews: some View {
        BecomeAModelView().environmentObject(ScreenNavigator())
    }
}
