//
//  InitialAnimationView.swift
//  J'Ma Radio
//
//  Created by Алексей Волобуев on 12.05.2023.
//

import SwiftUI

struct InitialAnimationView: View {
    @State var fadeInOut = true
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay (
                VStack {
                    Spacer()
                    Image("jma_radio_logo_white")
                        .resizable()
                        .frame(width: 290, height: 150)
                        .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1)) {
                                fadeInOut.toggle()
                            }
                        }.opacity(fadeInOut ? 0 : 1)
                    Spacer()
                }
            )
    }
}

struct InitialAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        InitialAnimationView()
    }
}
