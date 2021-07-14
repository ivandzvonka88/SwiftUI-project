
import SwiftUI

struct Photos2View: View {
    
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
                            SemiBoldText(text: " 1 MORE IMAGES", textColor: .GSPrimary, fontSze: 16)
                                .lineLimit(nil)
                        }
                        .padding(.top, 5)
                    }
                    
                    Spacer()
                    VStack(alignment: .center) {
                        HStack(spacing : 20) {
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("photo3")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(width: 143, height: 173)
                                        .scaledToFill()
                                        .padding(.top, 20)
                                    
                                        Image("TransferCircle")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                            .padding(.top, -70)
                                        Image("CloseIcon")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 15, height: 15)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .padding(.top, -60)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                        
                                }
                                .frame(width: 143, height: 170)
                                .background(Color.clear)
                                .cornerRadius(20)
                                .clipped()
                            }
                            NavigationLink(destination: ExpertTipsView()) {
                                VStack {
                                    Image("photo4")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(width: 143, height: 173)
                                        .scaledToFill()
                                        .padding(.top, 20)
                                    
                                        Image("TransferCircle")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                            .padding(.top, -70)
                                        Image("CloseIcon")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 15, height: 15)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .padding(.top, -60)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                        
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
                                    Image("photo3")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(width: 143, height: 173)
                                        .scaledToFill()
                                        .padding(.top, 20)
                                    
                                        Image("TransferCircle")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                            .padding(.top, -70)
                                        Image("CloseIcon")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 15, height: 15)
                                            //.frame(minWidth: 0, maxWidth: .infinity)
                                            .padding(.top, -60)
                                            .scaledToFit()
                                            .foregroundColor(.clear)
                                        
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
            VStack(alignment: .center) {
                NavigationLink(destination: Link1View()) {
                    ForwardIcon(height: 70, cornerRadius: 35)
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }.hideNavigationBar()
    }
}

struct Photos2View_Previews: PreviewProvider {
    static var previews: some View {
        Photos2View()
    }
}
