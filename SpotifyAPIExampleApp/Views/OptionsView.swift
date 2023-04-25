//
//  OptionsView.swift
//  SpotifyAPIExampleApp
//
//  Created by Viet Quoc Bui on 4/25/23.
//

import Foundation
import SpotifyWebAPI
import Combine
import SwiftUI

/// a view that displays options to navigate between two screens
struct OptionsView: View {

    var body: some View {
        
        List {

            NavigationLink(destination: SwipeView()) {
                Text("Swipe")
            }
            NavigationLink(destination: SearchForTracksView()) {
                Text("Search")
            }

            NavigationLink(destination: RecentlyPlayedView()) {
                Text("Recently Played")
            }

            NavigationLink(destination: SavedAlbumsGridView()) {
                Text("Albums")
            }



        }
    }

}

struct OptionsView_Preview: PreviewProvider {
    
    static let spotify: Spotify = {
        let spotify = Spotify()
        spotify.isAuthorized = true
        return spotify
    }()
    
    static var previews: some View {
        NavigationView {
            OptionsView()
                .environmentObject(spotify)
        }
    }
}
    


