
import SwiftUI

struct ExamplePhotosView: View {
    var body: some View {
        VStack(alignment: .center) {
            NavigationBar(showMore: true)
                .frame(height: 60)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Group {
                        SemiBoldText(text: "Example photos", textColor: .GSPrimary, fontSze: 27)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)
                        HStack {
                            RegularText(text: "Women", textColor: .GSPrimary, fontSze: 16)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)
                            RegularText(text: "Men", textColor: .GSLightText, fontSze: 16)
                            .padding([.leading, .trailing], 30)
                            .padding(.top, 10)
                            .lineLimit(nil)
                        }
                        .padding(.top, 30)
                        RegularText(text: "Use sunlight, no make-up, no filters, no group photos, simple outfit.", textColor: .GSDarkText, fontSze: 12)
                            .padding([.leading, .trailing], 30)
                            .lineSpacing(3)
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                    }

                    
                    
                    HStack(spacing : 5){
                        VStack {
                            Group{
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo2")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo1")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo2")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        VStack {
                            Group{
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo1")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo2")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                                Button(action: {
                                    NavigationLink(destination: FullScreenImageView(imageName: "FullScreenModel")) {
                                        ForwardIcon(height: 0, cornerRadius: 0)
                                    }
                                }){
                                    Image("photo2")
                                        .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding([.bottom, .top], 5)
                                    .background(Color.GSBackground)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                    }
                    .padding([.leading, .trailing], 10)
                }
            }
            VStack(alignment: .center) {
                NavigationLink(destination: Photos1View()) {
                    ForwardIcon(height: 70, cornerRadius: 35)
                }.foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, -80)
        }.hideNavigationBar()
    }
}

struct ExamplePhotosView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplePhotosView()
    }
}
