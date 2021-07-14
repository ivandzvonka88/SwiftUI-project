

import SwiftUI

let instructions: String = """
1. Make some smashing photos of yourself via our guidelines.

2. Upload your best photos today.

3. On Monday we will show you to the agencies.

4. On Saturday you know who wants to meet you!
"""
struct BecomeAModelGuideView: View {
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
                    Image("Lady")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -20)
                    BecomeAModelGuideInstructionView()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.top, -50)
                    NavigationLink(destination: ModelAgencyView()) {
                        ForwardIcon(height: 70, cornerRadius: 35, backgroundColor: .white, foregroundColor: .GSPrimary)

                    }.padding(.top, -120)
                }
            }.padding(.bottom, 0)
        }
        .edgesIgnoringSafeArea(.bottom)
        .hideNavigationBar()
    }
}

struct BecomeAModelGuideView_Previews: PreviewProvider {
    static var previews: some View {
        BecomeAModelGuideView().environmentObject(ScreenNavigator())
    }
}

struct BecomeAModelGuideInstructionView: View {
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
        .background(Color.GSPrimary)
        .cornerRadius(40, corners: [.topLeft, .topRight])
        .hideNavigationBar()
    }
}

extension View {
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
}
