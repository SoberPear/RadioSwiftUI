//
//  MainView.swift
//  J'Ma Radio
//
//  Created by Алексей Волобуев on 14.05.2023.
//

import SwiftUI

struct MainView: View {
    @State var scrollText = false
    @State var logoFadeInOut = false
    @State var starsFadeInOut = false
    
    var body: some View {
        NavigationView {
            Color.black
                .ignoresSafeArea()
                .overlay(
                    VStack {
                        HStack{
                            Image("menu_icon").resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Spacer()
                            NavigationLink(destination: ProductsContentView()) {
                                Image("jma_world_icon").resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                            }
                        }
                        Image("jma_radio_logo_white").resizable()
                            .frame(width: 230, height: 120)
                            .onAppear() {
                                withAnimation(Animation.easeInOut(duration: 1).delay(2.5)) {
                                    //logoFadeInOut.toggle()
                                    
                                }
                            }.opacity(logoFadeInOut ? 0 : 1)
                        ZStack{
                            Image("player_background")
                                .resizable().scaledToFit()
                                .frame(width: 400, height: 400, alignment: .center)
                                .onAppear() {
                                    withAnimation(Animation.easeInOut(duration: 2.5).delay(2.5)) {
                                        //starsFadeInOut.toggle()
                                        
                                    }
                                }.opacity(starsFadeInOut ? 0 : 1)
                            Image("player_geometry_white")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300, alignment: .center)
                            Button {
                                pauseButtonTapped()
                            } label: {
                                Image("player_button_white")
                                    .resizable()
                                    .frame(width: 78, height: 88).offset(x: 13)
                            }
                        }
                        HStack {
                            Spacer().frame(width: 20)
                            Text("ARTIST NAME - TRACK 1")
                                .frame(width: 300)
                                .offset(x: scrollText ? -200 : 50)
                                .foregroundColor(.white)
                                .font(.custom("PitchSans-Regular", size: 20))
                                .animation(.linear(duration: 10).repeatForever(autoreverses: false), value: scrollText)
                                .onAppear {
                                    self.scrollText.toggle()
                                }
                                .overlay {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 100)
                                        .offset(x: -180)
                                    Image("song_icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                        .offset(x: -170)
                                }
                        }
                        Spacer()
                        Image("share_icon").resizable().scaledToFit().frame(width: 25, height: 25)
                        Spacer()
                    }
                        .padding())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
