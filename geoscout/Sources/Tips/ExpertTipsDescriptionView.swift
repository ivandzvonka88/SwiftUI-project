
import SwiftUI

struct ExpertTipsDescriptionView: View {
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Group {
                        SemiBoldText(text: "Tips from an expert", textColor: .GSPrimary, fontSze: 27)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)

                        MediumText(text: "To summarize", textColor: .GSLightText, fontSze: 20)
                            .padding(.top, 5)
                            .padding([.leading, .trailing], 30)
                            .lineLimit(nil)
                    }

                    RegularText(text: "Agencies do not need professional photos and these summary are just guidelines. If the pictures are not good enough the agencies will always ask for new ones!", textColor: .GSLightText, fontSze: 12)
                        .padding([.leading, .trailing], 30)
                        .lineSpacing(3)
                        .padding(.top, 80)
                        .multilineTextAlignment(.center)
                    
                    RegularText(text: "Ask someone to assist you making the photos;", textColor: .GSPrimary, fontSze: 12)
                    .padding([.leading, .trailing], 30)
                    .lineSpacing(3)
                    .padding(.top, 30)
                    .multilineTextAlignment(.center)
                    
                    RegularText(text: "Do not wear make-up;", textColor: .GSPrimary, fontSze: 12)
                    .padding([.leading, .trailing], 30)
                    .lineSpacing(3)
                    .padding(.top, 30)
                    .multilineTextAlignment(.center)
                    
                    RegularText(text: "Wear an outfit you feel comfortable in;", textColor: .GSPrimary, fontSze: 12)
                    .padding([.leading, .trailing], 30)
                    .lineSpacing(3)
                    .padding(.top, 30)
                    .multilineTextAlignment(.center)
                    
                    RegularText(text: "Make sure to use daylight", textColor: .GSPrimary, fontSze: 12)
                    .padding([.leading, .trailing], 30)
                    .lineSpacing(3)
                    .padding(.top, 30)
                    .multilineTextAlignment(.center)
                    
                    RegularText(text: "On the next screen you will find example photos!", textColor: .GSLightText, fontSze: 12)
                    .padding([.leading, .trailing], 30)
                    .lineSpacing(3)
                    .padding(.top, 80)
                    .multilineTextAlignment(.center)
                    
                    VStack(alignment: .center) {
                        NavigationLink(destination: ExamplePhotosView()) {
                            ForwardIcon(height: 70, cornerRadius: 35)
                        }.foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, 80)
                }
            }
        }.hideNavigationBar()
    }
}

struct ExpertTipsDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertTipsDescriptionView()
    }
}
