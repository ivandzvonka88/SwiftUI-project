

import SwiftUI

struct OnboardingView: View {
    var images = ["Intro1", "Intro2", "Intro3"]

    var titles = ["Get scouted by the\nbest agencies", "Scout models and\nearn money!", "Learn how to make the best first impression!"]

    var captions = ["Ever wanted to be a model? We have teamed up with the best modeling agencies so you don’t have to look any further!", "Do you know someone that should reallly be a model? With Gescout you can now easily scout friends and earn money!", "Our experts will guide you into making the best impressions and help you make the best decision!"]

    @State var currentPageIndex = 0
    @State var selection: Int? = 0
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Image(images[currentPageIndex])
                VStack(alignment: .leading, spacing: 10) {
                    SemiBoldText(text: titles[currentPageIndex], textColor: .GSPrimary, fontSze: 27)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil)
                    RegularText(text: captions[currentPageIndex], textColor: .GSDarkText, fontSze: 14)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil)
                        .padding(.top, 20)
                }.padding(.top, 30)
                PageControl(numberOfPages: images.count, currentPageIndex: $currentPageIndex)
                    .padding(.top, 60)
                HStack {
                    NavigationLink(destination: LoginView(), tag: 1, selection: $selection) {
                        Button(action: {
                            self.selection = 1
                        }) {
                            SemiBoldText(text: "SKIP", textColor: .GSDarkText, fontSze: 14)
                        }.padding(.leading, 20)
                    }.foregroundColor(.white)

                    Spacer()
                    NavigationLink(destination: LoginView(), tag: 2, selection: $selection) {
                        Button(action: {
                            if self.currentPageIndex + 1 == self.images.count {
                                self.selection = 2
                            } else {
                                self.currentPageIndex += 1
                            }
                                        }) {
                            Image("forwardIcon")
                        }
                        .buttonStyle(CircularButtonStyle(color: .GSPrimary, padding: 30))
                        .padding(.trailing, 20)
                    }.foregroundColor(.white)

                    Spacer()
                }.padding(.top, 50)

            }.padding(30)
        }
        .hideNavigationBar()
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
/*
 var body: some View {
        VStack(alignment: .center) {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                .frame(height: 600)
            VStack(alignment: .leading, spacing: 10) {
                SemiBoldText(text: titles[currentPageIndex], textColor: .GSPrimary, fontSze: 27)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(nil)
                RegularText(text: captions[currentPageIndex], textColor: .GSDarkText, fontSze: 14)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(nil)
                    .padding(.top, <#T##length: CGFloat?##CGFloat?#>)
            }.padding(.top, 30)
            PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
            HStack {
                Spacer()
                Button(action: {
                    if self.currentPageIndex + 1 == self.subviews.count {
                        self.currentPageIndex = 0
                    } else {
                        self.currentPageIndex += 1
                    }
                }) {
                    ButtonContent()
                }
            }
            .padding()
        }
 */
