
import SwiftUI

struct Link2View: View {
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center){
                SemiBoldText(text: "Do you know someone that could be a model too?", textColor: .white, fontSze: 30)
                    .padding([.leading, .trailing], 50)
                    .padding(.top, 20)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .frame(height: 60)
                Image("Photo6")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(width: 184, height: 184)
                .scaledToFill()
                .padding([.leading, .trailing], 40)
                SemiBoldText(text: "Earn up to 250 euro per model you scout!", textColor: .white, fontSze: 22)
                    .padding([.leading, .trailing], 50)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 520)
            .background(Color.GSPrimary)
            .cornerRadius(40, corners: [.bottomLeft, .bottomRight])
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    RegularText(text: "Don`t wait until someone else scouts him or her.", textColor: .GSLightText, fontSze: 24)
                    .padding([.leading, .trailing], 50)
                    .padding(.top, 20)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                }
            }
            NavigationLink(destination: MycastingView1()) {
                SemiBoldText(text: "SCOUT A FRIEND", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
            
        }.hideNavigationBar()
    }
}

struct Link2View_Previews: PreviewProvider {
    static var previews: some View {
        Link2View()
    }
}
