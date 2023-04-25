//
//  Card.swift
//  Rhythmiq
//
//  Created by Paul Addai on 3/6/23.
//

import SwiftUI
import SpotifyWebAPI
import Combine

struct Card: View {
    let imageId: String
  //  @Binding private var conditionValue: Bool
    @State private var offset = CGSize.zero
    @EnvironmentObject var spotify: Spotify
    
    let track : Track

    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                offset = value.translation
                print(offset)
            }
            .onEnded { value in
                withAnimation {
                    if abs(value.translation.width) > 100 {
                        // Move the card off screen if dragged far enough
                        let direction = value.translation.width > 0 ? 1 : -1
                        offset.width = CGFloat(direction) * 1000
                    } else {
                        // Reset the card's position if not dragged far enough
                        offset = .zero
                    }
                    
                    if (value.translation.width < 0){
                        print("Dislike - ignore")
                       // conditionValue = false
                    }else if (value.translation.width > 0){
                        print("like - add")
                        //conditionValue = true
                    }
                }
            }

        return ZStack {
            Image(imageId).resizable().scaledToFit().frame(width: 350, height: 450).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:20, x:4, y:4)
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .cornerRadius(20)
        .shadow(radius: 10)
        .offset(offset)
        .gesture(dragGesture)
    }
    func trackDisplayImage() -> String {
        let displayImage = track.album?.images?.first?.url.absoluteString ?? ""
        return displayImage
    }
    func trackDisplayName() -> String {
        var displayName = track.name
        if let artistName = track.artists?.first?.name {
            displayName += " - \(artistName)"
        }
        return displayName
    }
}


//struct Card_Preview: PreviewProvider {
//    /// Preview for a Card
//
//}

