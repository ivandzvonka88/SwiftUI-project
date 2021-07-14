
import SwiftUI

struct ModelingDetailView: View {
    @State var currentPageIndex = 0
    @State var selection: Int? = 0
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center){
                Image("Photo7")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 400)
                .scaledToFill()
                PageControl(numberOfPages: 5, currentPageIndex: $currentPageIndex)
                    .padding(.top, -50)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 400)
            .background(Color.clear)
            NavigationBar2(showMore: true)
            .frame(height: 60)
                .padding(.top, -400)
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    SemiBoldText(text: "Help my daughter/son wants to become a model", textColor: .GSLightText, fontSze: 20)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                        .frame(height: 60)
                    .multilineTextAlignment(.leading)
                    MediumText(text: "The modeling world is a world that has a lot of attraction to it.Both for models as for scouters.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Uttincidunt ligula sit amet sodales fermentum. Proin sed ligula gravida, vulputate enim eget, varius sem. Nullam tincidunt augue et volutpat condimentum. Duis varius orci magna, posuere mollis ipsum placerat non. Sed at nisi tincidunt, tempor lorem at, faucibus libero. Donec eleifend sit ametnisl at suscipit. Vestibulum ornare ornare ipsum nec elementum. Donec lobortis neque ut molestie auctor. Donec euismod lorem non est scelerisque efficitur.", textColor: .GSLightText, fontSze: 14)
                        .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                        .frame(height: 300)
                    .multilineTextAlignment(.leading)
                    Image("Photo8")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(30)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 300, height: 200)
                    .scaledToFit()
                    MediumText(text: "The modeling world is a world that has a lot of attraction to it.Both for models as for scouters.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Uttincidunt ligula sit amet sodales fermentum. Proin sed ligula gravida, vulputate enim eget, varius sem. Nullam tincidunt augue et volutpat condimentum. Duis varius orci magna, posuere mollis ipsum placerat non. Sed at nisi tincidunt, tempor lorem at, faucibus libero. Donec eleifend sit ametnisl at suscipit. Vestibulum ornare ornare ipsum nec elementum. Donec lobortis neque ut molestie auctor. Donec euismod lorem non est scelerisque efficitur.", textColor: .GSLightText, fontSze: 14)
                        .padding(.bottom, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                        .frame(height: 400)
                    .multilineTextAlignment(.leading)
                    Image("line")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                        .padding([.top, .bottom], 30)
                        .padding([.leading, .trailing], 60)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 300, height: 2)
                    .scaledToFill()
                    SemiBoldText(text: "Still got a question? Mail us!", textColor: .GSLightText, fontSze: 18)
                    .padding(.leading, 60)
                    .padding(.trailing, 60)
                        .multilineTextAlignment(.center)
                    MediumText(text: "ikben@gescout.nl", textColor: .GSLightText, fontSze: 14)
                        .padding(.bottom, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                        .multilineTextAlignment(.center)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
            }
        }
    }
}

struct LModelingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ModelingDetailView()
    }
}
