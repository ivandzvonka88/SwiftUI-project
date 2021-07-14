

import SwiftUI

struct PersonalInformationView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var notifications: Bool = true
    @State var firstname: String = ""
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                        Text("Personal information")
                            .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                        .padding([.leading, .trailing], 30)
                    Group {
                        HStack {
                            Text("First name")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Jay", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Last name")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Jay", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Birth day")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("19-01-2001", text: $firstname, onEditingChanged: { changed in
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
                            Text("Emailadres")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("jay@morange.com", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Email parents")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Parents@morange.com", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Phone")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("+31 612345678", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("Gender")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Male", text: $firstname, onEditingChanged: { changed in
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
                            Text("Country")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Netherlands", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
                        }
                        .padding([.top, .bottom], 10)
                        .padding([.leading, .trailing], 30)
                        Divider()
                        HStack {
                            Text("City")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 12))
                                .padding(.trailing, 30)
                                .frame(width: 120, alignment: .leading)
                            TextField("Groningen", text: $firstname, onEditingChanged: { changed in
                                print("Username onEditingChanged - \(changed)")
                                                        }) {
                                print("Username onCommit")
                            }
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

struct PersonalInformationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInformationView().environmentObject(ScreenNavigator())
    }
}
