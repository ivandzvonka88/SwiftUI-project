
import SwiftUI

struct CashBackView: View {
    @State var currentPageIndex = 0
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
            .frame(height: 60)
            VStack(alignment: .center){
                Image("CashBack")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(width: 276, height: 291)
                .scaledToFill()
                .padding([.leading, .trailing], 40)
                SemiBoldText(text: "If 5 or more agencies want to contract the model", textColor: .GSLightText, fontSze: 16)
                .padding([.leading, .trailing], 50)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 350)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    SemiBoldText(text: "€ 250,00", textColor: .GSPrimary, fontSze: 36)
                    .padding([.leading, .trailing], 50)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    SemiBoldText(text: "Reward", textColor: .GSPrimary, fontSze: 36)
                    .padding([.leading, .trailing], 50)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    PageControl(numberOfPages: 3, currentPageIndex: $currentPageIndex)
                    .padding(.top, 20)
                }
            }
            .padding(.top, 20)
            VStack(alignment: .center) {
                NavigationLink(destination: ScoutYourFriendView()) {
                    ForwardIcon(height: 70, cornerRadius: 35)
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }.hideNavigationBar()
    }
}

struct CashBackView_Previews: PreviewProvider {
    static var previews: some View {
        CashBackView()
    }
}
