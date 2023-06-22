//
//  ProductsContentView.swift
//  J'Ma Radio
//
//  Created by Алексей Волобуев on 12.05.2023.
//

import SwiftUI

struct ProductsContentView: View {
    @State var fadeInOut = true
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                WebView(type: .public, url: "https://stolyarova.pro")
            )
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 1)) {
                    fadeInOut.toggle()
                }
            }.opacity(fadeInOut ? 0 : 1)
    }
}

struct ProductsContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsContentView()
    }
}
