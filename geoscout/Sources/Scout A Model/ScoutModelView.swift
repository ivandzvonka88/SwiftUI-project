
import SwiftUI

struct ScoutModelView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            GSTitleNavigationBar()
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    MediumText(text: "Start model scouting", fontSze: 27)
                        .padding(.trailing, 60)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                    SemiBoldText(text: "We all have that one friend, that must really become a model", textColor: .GSDarkText, fontSze: 16)
                        .padding(.trailing, 60)
                        .padding(.leading, 30)
                        .padding(.top, 20)
                        .multilineTextAlignment(.leading)
                    RegularText(text: "All you have to do is scout him/her via Gescout and we make sure the top modeling agencies look!.", textColor: .GSDarkText, fontSze: 12)
                        .padding(.top, 30)
                        .padding(.leading, 30)
                        .padding(.trailing, 60)
                        .multilineTextAlignment(.leading)
                    Image("TC")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, 30)
                        .padding([.leading, .trailing], 40)
                        .background(Color.GSBackground)
                }
            }
            VStack(alignment: .center) {
                NavigationLink(destination: ModelingAgenciesView()) {
                    ForwardIcon(height: 70, cornerRadius: 35)
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 30)
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct ScoutModelView_Previews: PreviewProvider {
    static var previews: some View {
        ScoutModelView().environmentObject(ScreenNavigator())
    }
}
