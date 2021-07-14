

import SwiftUI

struct PhysiquesView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var notifications: Bool = true
    @State var firstname: String = ""
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                        Text("Look and physiques")
                            .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                        .padding([.leading, .trailing], 30)
                    Group {
                        HStack {
                            Text("Height")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("180", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Dress size")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("34", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Shoe size")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("40", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                    }
                    Group{
                        HStack {
                            Text("Haircolor")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Brown", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Eyes color")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Brown", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Ethinicity")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Brown", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        VStack(alignment: .leading) {
                            Text("This makes me unique / know this about me")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .frame(alignment: .leading)
                                .padding(.top, 20)
                            Text("I`m a sports athlete since I was 9 years old. I like horses and I`m not afraid of the spotlight.")
                                .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                            .padding(.top, 30)
                                .padding(.bottom, 50)
                            .frame(alignment: .leading)
                            
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                    }
                    
                    SemiBoldText(text: "SAVE", textColor: .white, fontSze: 16)
                    .modifier(GSRoundedTextStyle())
                    .padding([.leading, .trailing], 40)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, 30)
                }
            }
            
                
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct PhysiquesView_Previews: PreviewProvider {
    static var previews: some View {
        PhysiquesView().environmentObject(ScreenNavigator())
    }
}
