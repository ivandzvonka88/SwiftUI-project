

import SwiftUI

struct AboutModelingView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    var body: some View {
        VStack(alignment: .center) {
            GSNavigationBar()
                .frame(height: 60)
            SemiBoldText(text: "ALL TO KNOW ABOUT MODELING", textColor: .GSLightText, fontSze: 24)
                .padding(.top, 30)
                .padding(.leading, 30)
                .padding(.trailing, 60)
                .multilineTextAlignment(.leading)
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    NavigationLink(destination: ModelingDetailView()) {
                        VStack(alignment: .center, spacing: 5){
                            Image("Rectangle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .frame(width: 70, height: 70)
                                .scaledToFit()
                            MediumText(text: "Parent", textColor: .GSLightText, fontSze: 12)
                                
                        }
                        .frame(width: 70, height: 100)
                    }
                    .background(Color.clear)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    NavigationLink(destination: ModelingDetailView()) {
                        VStack(alignment: .center, spacing: 5){
                            Image("Rectangle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .frame(width: 70, height: 70)
                                .scaledToFit()
                            MediumText(text: "Agencies", textColor: .GSLightText, fontSze: 12)
                                
                        }
                        .frame(width: 70, height: 100)
                    }
                    .background(Color.clear)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    NavigationLink(destination: ModelingDetailView()) {
                        VStack(alignment: .center, spacing: 5){
                            Image("Rectangle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .frame(width: 70, height: 70)
                                .scaledToFit()
                            MediumText(text: "Modeling", textColor: .GSLightText, fontSze: 12)
                                
                        }
                        .frame(width: 70, height: 100)
                    }
                    .background(Color.clear)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    NavigationLink(destination: ModelingDetailView()) {
                        VStack(alignment: .center, spacing: 5){
                            Image("Rectangle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .frame(width: 70, height: 70)
                                .scaledToFit()
                            MediumText(text: "Scouting", textColor: .GSLightText, fontSze: 12)
                                
                        }
                        .frame(width: 70, height: 100)
                    }
                    .background(Color.clear)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    NavigationLink(destination: ModelingDetailView()) {
                        VStack(alignment: .center, spacing: 5){
                            Image("Rectangle")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .frame(width: 70, height: 70)
                                .scaledToFit()
                            MediumText(text: "Scouting", textColor: .GSLightText, fontSze: 12)
                                
                        }
                        .frame(width: 70, height: 100)
                    }
                    .background(Color.clear)
                    .frame(minWidth: 0, maxWidth: .infinity)
                }
            }
            .frame(height: 100)
            .padding([.leading, .trailing], 30)
            .hideNavigationBar()
            MediumText(text: "FREQUENTLY ASKED QUESTIONS", textColor: .GSLightText, fontSze: 20)
                .padding([.top, .bottom], 30)
            .padding(.leading, 30)
            .padding(.trailing, 60)
            .multilineTextAlignment(.leading)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    SemiBoldText(text: "What do we have to pay?", textColor: .GSLightText, fontSze: 16)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    MediumText(text: "Absolutely nothing. We are paid by agencies for finding models.", textColor: .GSLightText, fontSze: 12)
                        .padding([.top, .bottom], 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    SemiBoldText(text: "What happens when I`m invited?", textColor: .GSLightText, fontSze: 16)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    MediumText(text: "When you`re invited by a modeling agency we contact you to arrange a casting between you and the agency.", textColor: .GSLightText, fontSze: 12)
                        .padding([.top, .bottom], 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    SemiBoldText(text: "Are my parents allowed to come with me?", textColor: .GSLightText, fontSze: 16)
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    MediumText(text: "Most certainly, aside from the fact that it`s mandatory for minors, agencies love parents!", textColor: .GSLightText, fontSze: 12)
                        .padding([.top, .bottom], 30)
                    .padding(.leading, 30)
                    .padding(.trailing, 60)
                    .multilineTextAlignment(.leading)
                    
                }
            }
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct AboutModelingView_Previews: PreviewProvider {
    static var previews: some View {
        AboutModelingView().environmentObject(ScreenNavigator())
    }
}
