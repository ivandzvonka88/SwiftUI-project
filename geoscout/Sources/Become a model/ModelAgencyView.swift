
import SwiftUI

struct ModelItem {
    var title: String
    var caption: String
}

struct ModelAgencyView: View {
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
                    MediumText(text: "There is no better way to start a modeling career than by starting it with the right modeling agency.", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 30)
                        .padding(.leading, 30)
                        .padding(.trailing, 60)
                        .multilineTextAlignment(.leading)
                    
                    Image("Lady")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 50)
                        .padding(.leading, -230)
                    ModelAgencyInstructionView()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.trailing, -150)
                        .padding(.top, -600)
                    NavigationLink(destination: MeasurementsView()) {
                        ForwardIcon(height: 70, cornerRadius: 35, backgroundColor: .GSPrimary, foregroundColor: .white)

                    }.padding(.top, -120)
                }
                .frame(height: 700)
            }.padding(.bottom, 0)
        }
        .background(Color.init(hex: "#FDFBF5"))
        .edgesIgnoringSafeArea(.bottom)
        .hideNavigationBar()
    }
}

struct ModelAgencyView_Previews: PreviewProvider {
    static var previews: some View {
        ModelAgencyView().environmentObject(ScreenNavigator())
    }
}

struct ModelAgencyInstructionView: View {
    var items: [ModelItem] = [
        .init(title: "models1", caption: "Models1 represents top models such as Adriama Lima, Gisele Budchen."),
        .init(title: "Tips from an expert", caption: "You can only make your first impression once. That’s why it’s important to consider making it your best."),
        .init(title: "Tips from an expert", caption: "Just be yourself and show yourself. No make-up, no nothing other than the pure you.")
    ]
    
    @State var currentPageIndex = 0
    @State var selection: Int? = 0
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center) {
                MediumText(text: items[currentPageIndex].title, textColor: .GSLightText, fontSze: 40)
                    .padding(.trailing, 60)
                    .padding(.leading, 60)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
                MediumText(text: items[currentPageIndex].caption, textColor: .GSLightText, fontSze: 16)
                    .padding(.trailing, 60)
                    .padding(.leading, 60)
                    .multilineTextAlignment(.leading)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(width: 300, height: 300, alignment: .center)
            .background(Color.white)
            .cornerRadius(150)
            .hideNavigationBar()
            
            PageControl(numberOfPages: items.count, currentPageIndex: $currentPageIndex)
            .padding(.top, 14)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(width: 300, height: 450, alignment: .center)
        
        .hideNavigationBar()
    }
}

struct ModelAgencyInstructionPageView: View {
    var body: some View {
        VStack(alignment: .center) {
            MediumText(text: "Becoming a model How it works", textColor: .white, fontSze: 24)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.top, 50)
                .padding(.leading, 30)
                .padding(.trailing, 60)
            MediumText(text: instructions, textColor: .white, fontSze: 16)
                .padding(.top, 30)
                .padding(.leading, 30)
                .padding(.trailing, 60)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 500)
        .frame(width: 200, height: 200, alignment: .center)
        .background(Color.white)
        .cornerRadius(100)
        .hideNavigationBar()
    }
}

/*extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}*/
