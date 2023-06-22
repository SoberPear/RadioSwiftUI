//
//  ContentView.swift
//  J'Ma Radio
//
//  Created by Алексей Волобуев on 11.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var initialFadeInOut = false
    @State var mainFadeInOut = true
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
        ZStack{
            InitialAnimationView()
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 2.5)) {
                        initialFadeInOut.toggle()
                    }
                }.opacity(initialFadeInOut ? 0 : 1)
            MainView()
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 2.5).delay(2)) {
                        mainFadeInOut.toggle()
                    }
                }.opacity(mainFadeInOut ? 0 : 1)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
