//
//  SplashScreenView.swift
//  Rhythmiq
//
//  Created by Paul Addai on 2/16/23.
// Modified by Viet Bui 3/24/23

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            
            Constants.spotifyBlack
            Constants().Logo()
            
        }.ignoresSafeArea(.all)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
