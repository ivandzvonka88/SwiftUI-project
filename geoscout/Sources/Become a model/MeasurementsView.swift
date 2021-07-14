
import SwiftUI

struct MeasurementsView: View {
    @EnvironmentObject var navigator: ScreenNavigator
    @State private var height: Double = 0
    @State private var dress_size: Double = 0
    @State private var shoe_size: Double = 0
    @State private var selection: String = ""
    var body: some View {
        VStack(alignment: .center) {
            GSNavigationBar()
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    MediumText(text: "Measurements", fontSze: 27)
                        .padding(.trailing, 60)
                        .padding(.leading, 30)
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .leading){
                    SemiBoldText(text: "Height", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .leading) {
                        HStack {
                            Slider(value: $height, in: 100...230, step: 1)
                                .frame(height: 40)
                                .accentColor(.GSPrimary)
                                
                            Spacer()
                            SemiBoldText(text: String(format:"%.0f CM", height), textColor: .GSDarkText, fontSze: 14)
                                //.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 10)
                                .frame(height: 40)
                                .multilineTextAlignment(.leading)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            //.padding(.top, 38)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    SemiBoldText(text: "Dress size", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .leading) {
                        HStack {
                            Slider(value: $dress_size, in: 20...100, step: 1)
                                .frame(height: 40)
                                .accentColor(.GSPrimary)
                                
                            Spacer()
                            SemiBoldText(text: String(format:"%.0f EU", dress_size), textColor: .GSDarkText, fontSze: 14)
                                //.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 10)
                                .frame(height: 40)
                                .multilineTextAlignment(.leading)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            //.padding(.top, 38)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    SemiBoldText(text: "Shoe size", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .leading) {
                        HStack {
                            Slider(value: $shoe_size, in: 10...50, step: 1)
                                .frame(height: 40)
                                .accentColor(.GSPrimary)
                                
                            Spacer()
                            SemiBoldText(text: String(format:"%.0f EU", shoe_size), textColor: .GSDarkText, fontSze: 14)
                                //.padding(.top, 10)
                                .padding(.leading, 20)
                                .padding(.trailing, 10)
                                .frame(height: 40)
                                .multilineTextAlignment(.leading)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            //.padding(.top, 38)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    }
                    VStack(alignment: .leading){
                    SemiBoldText(text: "Haircolor", textColor: .GSDarkText, fontSze: 14)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                    .multilineTextAlignment(.leading)
                    VStack(alignment: .leading) {
                        HStack {
                            Picker(selection: $selection, label: Text("Brown")){
                                Text("Red").tag(1)
                                Text("Blue").tag(2)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 60)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                        SemiBoldText(text: "Eyes color", textColor: .GSDarkText, fontSze: 14)
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .multilineTextAlignment(.leading)
                        VStack(alignment: .leading) {
                            HStack {
                                Picker(selection: $selection, label: Text("Green")){
                                    Text("Red").tag(1)
                                    Text("Blue").tag(2)
                                }
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.leading, 30)
                                .padding(.trailing, 30)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 60)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    VStack(alignment: .center) {
                        NavigationLink(destination: ExpertTipsView()) {
                            ForwardIcon(height: 70, cornerRadius: 35)
                        }.foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.top, 30)
                }
            }
        }
        .hideNavigationBar()
        .background(BGColor())
    }
    }
}

struct MeasurementsView_Previews: PreviewProvider {
    static var previews: some View {
        MeasurementsView().environmentObject(ScreenNavigator())
    }
}
