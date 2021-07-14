
import SwiftUI

struct Link1View: View {
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center){
                Image("photo5")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(width: 276, height: 291)
                .scaledToFill()
                .padding([.leading, .trailing], 40)
                SemiBoldText(text: "On Monday we introduce you to the agencies!", textColor: .white, fontSze: 30)
                    .padding([.leading, .trailing], 50)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 520)
            .background(Color.GSPrimary)
            .cornerRadius(40, corners: [.bottomLeft, .bottomRight])
            NavigationBar1(showMore: true)
            .frame(height: 60)
                .padding(.top, -550)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    RegularText(text: "And on Saturday we tell you the outcomes!", textColor: .GSLightText, fontSze: 24)
                    .padding([.leading, .trailing], 50)
                    .padding(.top, 20)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                }
            }
            VStack(alignment: .center) {
                NavigationLink(destination: Link2View()) {
                    ForwardIcon(height: 70, cornerRadius: 35)
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }.hideNavigationBar()
    }
}

struct Link1View_Previews: PreviewProvider {
    static var previews: some View {
        Link1View()
    }
}
