
import SwiftUI
struct IntroItem {
    var title: String
    var subTitle: String
    var caption: String
    var imageName: String
}

struct ExpertTipsView: View {
    var items: [IntroItem] = [
        .init(title: "Tips from an expert", subTitle: "Impression, and technique", caption: "You can only make your first impression once. That’s why it’s important to consider making it your best.", imageName: "Tips1"),
        .init(title: "Tips from an expert", subTitle: "Posture and facial", caption: "You can only make your first impression once. That’s why it’s important to consider making it your best.", imageName: "Tips2"),
        .init(title: "Tips from an expert", subTitle: "Be yourself", caption: "Just be yourself and show yourself. No make-up, no nothing other than the pure you.", imageName: "Tips3")
    ]

    @State var currentPageIndex = 0
    @State var selection: Int? = 0

    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Group {
                        SemiBoldText(text: items[currentPageIndex].title, textColor: .GSPrimary, fontSze: 27)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)

                        MediumText(text: items[currentPageIndex].subTitle, textColor: .GSDarkText, fontSze: 20)
                            .padding(.top, 5)
                            .padding([.leading, .trailing], 30)
                            .lineLimit(nil)
                    }
                    PageControl(numberOfPages: items.count, currentPageIndex: $currentPageIndex)
                        .padding(.top, 14)
                        .padding(.leading, 40)
                    VStack(alignment: .center) {
                        Image(items[currentPageIndex].imageName)
                    }.frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, 10)

                    RegularText(text: items[currentPageIndex].caption, textColor: .GSDarkText, fontSze: 12)
                        .padding([.leading, .trailing], 65)
                        .lineSpacing(3)
                        .padding(.top, 30)
                        .multilineTextAlignment(.center)

                    NavigationLink(destination: ExpertTipsDescriptionView()) {
                        SemiBoldText(text: "SKIP", textColor: .GSDarkText, fontSze: 14)
                            .padding(.all, 20)
                            .padding(.leading, 20)
                    }.padding(.top, 70)
                    VStack(alignment: .center) {
                        NavigationLink(destination: ExpertTipsDescriptionView(), tag: 2, selection: $selection) {
                            Button(action: {
                                if self.currentPageIndex + 1 == self.items.count {
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
                    }.frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, -80)
                }
            }
        }.hideNavigationBar()
    }
}

struct ExpertTipsView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertTipsView()
    }
}
