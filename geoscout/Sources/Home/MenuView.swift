
import SwiftUI

struct MenuView: View {
    var menuItem: [HomeMenuItem] = [
        .init(title: "Become a model", imageName: "Diamond", screen: .becomeModel),
        .init(title: "Scout a model", imageName: "Pher", screen: .scoutModel),
        .init(title: "My scoutings", imageName: "Rings", screen: .myScouting),
        .init(title: "Tips/Information", imageName: "Diamond", screen: .tips)
    ]

    var body: some View {
        VStack(alignment: .center) {
            GSTitleNavigationBar()
            HStack {
                Text("Hey, Jane")
                    .modifier(GSTextStyle(fontWeight: .bold, fontSize: 30))
                    .padding(.leading, 30)
                Spacer()
            }.padding(.top, 30)
            HStack {
                MediumText(text: "You have scouted 5 models", textColor: .GSDarkText, fontSze: 27)
                    .padding(.trailing, 70)
                    .padding(.top, 15)
                    .padding(.leading, 30)
                Spacer()
            }.padding(.top, 20)
            Spacer()
            GridStack(rows: 2, columns: 2) { row, col in
                NavigationLink(destination: self.destination(screen: self.menuItem[row + row + col].screen)) {
                    MenuCell(item: self.menuItem[row + row + col])
                }
            }
            .padding(.bottom, 30)
        }.background(BGColor())
            .hideNavigationBar()
    }

    func destination(screen: Screens) -> some View {
        switch screen {
        case .becomeModel:
            return AnyView(BecomeAModelView())
        case .tips:
            return AnyView(AboutModelingView())
        case .scoutModel:
            return AnyView(ScoutModelView())
        case .myScouting:
            return AnyView(MyScoutingView())
        default:
            return AnyView(CommingSoon())
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< self.columns, id: \.self) { column in
                        self.content(row, column)
                            .padding(10)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct MenuCell: View {
    var item: HomeMenuItem
    var body: some View {
        VStack {
            Image(item.imageName)
                .padding(.bottom, 10)
                .foregroundColor(.white)
            SemiBoldText(text: item.title, textColor: .white, fontSze: 13)
        }
        .frame(width: 140, height: 140)
        .background(Color.GSPrimary)
        .cornerRadius(20)
        .clipped()
    }
}
