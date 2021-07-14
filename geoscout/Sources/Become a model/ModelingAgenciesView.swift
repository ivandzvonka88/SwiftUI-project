
import SwiftUI

/*struct ModelItem {
    var title: String
    var caption: String
}*/

struct ModelingAgenciesView: View {
    @EnvironmentObject var navigator: ScreenNavigator

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
                    MediumText(text: "Modeling agencies", fontSze: 27)
                        .padding(.trailing, 60)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                    MediumText(text: "We have selected the best dutch international modeling agencies for you.", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                        .padding(.leading, 30)
                        .padding(.trailing, 60)
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .center) {
                        SemiBoldText(text: "models1", textColor: .GSLightText, fontSze: 40)
                            .padding(.trailing, 30)
                            .padding(.leading, 30)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .multilineTextAlignment(.leading)
                        /*MediumText(text: items[currentPageIndex].caption, textColor: .GSLightText, fontSze: 16)
                            .padding(.trailing, 60)
                            .padding(.leading, 60)
                            .multilineTextAlignment(.leading)*/
                        }
                    .padding([.top, .bottom], 50)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(width: 250, height: 250, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(125)
                    MediumText(text: "MODELS1", textColor: .GSDarkText, fontSze: 8)
                    .padding(.trailing, 30)
                        .padding(.top, 30)
                    .multilineTextAlignment(.leading)
                    MediumText(text: "Models1 represents top models such as Adriama Lima, Gisele Budchen.", textColor: .GSDarkText, fontSze: 12)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    
                }
            }.padding(.bottom, 0)
            NavigationLink(destination: CashBackView()) {
                ForwardIcon(height: 70, cornerRadius: 35, backgroundColor: .GSPrimary, foregroundColor: .white)

            }.padding(.top, -120)
        }
        .background(Color.init(hex: "#FDFBF5"))
        .edgesIgnoringSafeArea(.bottom)
        .hideNavigationBar()
    }
}

struct ModelingAgenciesView_Previews: PreviewProvider {
    static var previews: some View {
        ModelingAgenciesView().environmentObject(ScreenNavigator())
    }
}
