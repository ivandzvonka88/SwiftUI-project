
import SwiftUI

struct Photos1View: View {
    var photoItem: [PhotoItem] = [
        .init(title: "Profile", imageName: "Diamond", screen: .profile),
        .init(title: "Portrait", imageName: "Pher", screen: .portrait),
        .init(title: "Full body", imageName: "Rings", screen: .fullbody),
        .init(title: "Smiling", imageName: "Diamond", screen: .smiling)
    ]
    
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Group {
                        SemiBoldText(text: "Photos", textColor: .GSPrimary, fontSze: 27)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)
                        HStack(spacing : 2) {
                            SemiBoldText(text: "UPLOAD", textColor: .GSDarkText, fontSze: 16)
                                .frame(width: 70)
                                .padding(.leading, 30)
                                .lineLimit(nil)
                            SemiBoldText(text: " 4 IMAGES", textColor: .GSPrimary, fontSze: 16)
                                .lineLimit(nil)
                        }
                        .padding(.top, 5)
                    }
                    
                    Spacer()
                    VStack(alignment: .center) {
                        HStack(spacing : 20) {
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("Profile")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .scaledToFill()
                                        .frame(width: 143, height: 173)
                                        .padding(.top, 20)
                                    Image("1_")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        //.frame(minWidth: 0, maxWidth: .infinity)
                                        .padding(.top, -170)
                                        .padding(.leading, -65)
                                        .scaledToFit()
                                        
                                        .foregroundColor(.clear)
                                    SemiBoldText(text: "Profile", textColor: .white, fontSze: 18)
                                        .padding(.top, -60)
                                }
                                .frame(width: 143, height: 170)
                                .background(Color.clear)
                                .cornerRadius(20)
                                .clipped()
                            }
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("Portrait")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .scaledToFill()
                                        .frame(width: 143, height: 173)
                                        .padding(.top, 20)
                                    Image("2_")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        //.frame(minWidth: 0, maxWidth: .infinity)
                                        .padding(.top, -170)
                                        .padding(.leading, -65)
                                        .scaledToFit()
                                        
                                        .foregroundColor(.clear)
                                    SemiBoldText(text: "Portrait", textColor: .white, fontSze: 18)
                                        .padding(.top, -60)
                                }
                                .frame(width: 143, height: 170)
                                .background(Color.clear)
                                .cornerRadius(20)
                                .clipped()
                            }
                        }
                        HStack(spacing : 20) {
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("Fullbody")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .scaledToFill()
                                        .frame(width: 143, height: 173)
                                        .padding(.top, 20)
                                    Image("3_")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        //.frame(minWidth: 0, maxWidth: .infinity)
                                        .padding(.top, -170)
                                        .padding(.leading, -65)
                                        .scaledToFit()
                                        
                                        .foregroundColor(.clear)
                                    SemiBoldText(text: "Full body", textColor: .white, fontSze: 18)
                                        .padding(.top, -60)
                                }
                                .frame(width: 143, height: 170)
                                .background(Color.clear)
                                .cornerRadius(20)
                                .clipped()
                            }
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("Smiling")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .scaledToFill()
                                        .frame(width: 143, height: 173)
                                        .padding(.top, 20)
                                    Image("4_")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        //.frame(minWidth: 0, maxWidth: .infinity)
                                        .padding(.top, -170)
                                        .padding(.leading, -65)
                                        .scaledToFit()
                                        
                                        .foregroundColor(.clear)
                                    SemiBoldText(text: "Smiling", textColor: .white, fontSze: 18)
                                        .padding(.top, -60)
                                }
                                .frame(width: 143, height: 170)
                                .background(Color.clear)
                                .cornerRadius(20)
                                .clipped()
                            }
                        }
                    }
                    .padding(.top, 50)
                }
            }
            HStack(alignment: .center, spacing: 20) {
                NavigationLink(destination: Photos2View()) {
                    Image("GallaryIcon")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 70, height: 70)
                        .scaledToFill()
                }.foregroundColor(.white)
                
                NavigationLink(destination: Photos2View()) {
                    Image("CameraIcon")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(width: 70, height: 70)
                        .scaledToFill()
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }.hideNavigationBar()
    }
}

struct Photos1View_Previews: PreviewProvider {
    static var previews: some View {
        Photos1View()
    }
}
