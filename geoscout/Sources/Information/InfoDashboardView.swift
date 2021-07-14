

import SwiftUI

struct InfoDashboardView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State var notifications: Bool = true
    @State var newsletter: Bool = true
    @State var offer_notification: Bool = true
    @State var app_updates: Bool = true
    var body: some View {
        VStack(alignment: .center) {
            GSTitleNavigationBar()
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Group {
                        Text("Hello Jane,")
                            .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                        NavigationLink(destination: PersonalInformationView()) {
                        HStack {
                            ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                            
                                Text("Personal information")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                                    .padding(.leading, 30)
                            
                        }
                        .padding(.top, 11.5)
                        }
                        NavigationLink(destination: PhysiquesView()) {
                        HStack {
                            ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                            
                                Text("Look and physiques")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                                    .padding(.leading, 30)
                            
                        }
                        .padding(.top, 11.5)
                        }
                        NavigationLink(destination: ChangePasswordView()) {
                        HStack {
                            ScoutOption(title: "", imageName: "Diamond", imageColor: .GSDarkText, borderColor: .GSPrimary, iconSize: .init(width: 35, height: 30))
                            
                                Text("Change Password")
                                    .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                                    .padding(.leading, 30)
                            
                        }
                        .padding(.top, 11.5)
                        }
                        Text("Notification Settings")
                        .modifier(GSTextStyle(fontWeight: .medium, fontSize: 27))
                            .padding(.top, 20)
                        HStack {
                            Toggle(isOn: $notifications){
                                Text("Receive email notifications")
                                .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                            }
                        .toggleStyle(ColoredToggleStyle())
                        }
                        .padding(.top, 30)
                        HStack {
                            Toggle(isOn: $newsletter){
                                Text("Receive Newsletter")
                                .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                            }
                            .toggleStyle(ColoredToggleStyle())
                        }
                        .padding(.top, 5)
                        HStack {
                            Toggle(isOn: $offer_notification){
                                Text("Receive Offer Notification")
                                .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                            }
                            .toggleStyle(ColoredToggleStyle())
                        }
                        .padding(.top, 5)
                        HStack {
                            Toggle(isOn: $app_updates){
                                Text("Receive App Updates")
                                .modifier(GSTextStyle(textColor: .GSLightText, fontSize: 14))
                            }
                            .toggleStyle(ColoredToggleStyle())
                        }
                        .padding(.top, 5)
                        
                    }
                }
                .padding([.leading, .trailing], 30)
            }
        }
        .hideNavigationBar()
        .background(BGColor())
    }
}

struct InfoDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDashboardView().environmentObject(ScreenNavigator())
    }
}

struct ColoredToggleStyle: ToggleStyle{
    var onColor: Color = .GSToggleOn
    var offColor: Color = .GSToggleOff
    var thumbColor: Color = .white
    
    func makeBody(configuration: Self.Configuration) ->
        some View {
            HStack {
                configuration.label//The text(or view) portion of the Toggle
                Spacer()
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(configuration.isOn ? onColor: offColor)
                .frame(width: 50, height: 29)
                    .overlay(Circle()
                        .fill(thumbColor)
                        .shadow(radius: 1, x: 0, y:1)
                        .padding(1.5)
                        .offset(x: configuration.isOn ? 10 : -10))
                    .animation(Animation.easeInOut(duration: 0.2))
                    .onTapGesture {
                        configuration.isOn.toggle()
                }
            }
            .font(.title)
            .padding(.horizontal)
    }
}
