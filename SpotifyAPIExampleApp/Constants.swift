//
//  Variables.swift
//  Rhythmiq
//
//  Created by Viet Quoc Bui on 3/27/23.
// File to save reusable variables for UI-related code

import Foundation
import SwiftUI

private let spotifyClientID = "b2183070278947fc95235a8400606f18"
private let spotifyRedirectURL = URL(string: "rhythmiq://spotify-login-callback")

struct Constants {
    // global app constants like color or name
    struct App {
        static var appName = "Rhythmiq"
        static var fontName = "Montserrat Regular"
    }
    struct Layout {
        static var fontSizeTitle = 20
        static var fontSizeContent = 20
        static var fontSizeHeading = 20
        static var TextFieldPadding = 40
    }
    static var spotifyBlack = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    static var textColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    func Logo() -> some View {
        return VStack {
            Image("logo").resizable().scaledToFill().frame(width: 100,height: 100)
            Spacer().frame(height: 20)
            //Rhythmiq
            Text(Constants.App.appName).font(.custom(Constants.App.fontName, size: CGFloat(Constants.Layout.fontSizeTitle))).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
        }
    }
    struct Client {
        
        static let id = spotifyClientID
        static let url = spotifyRedirectURL
        
    }
}
