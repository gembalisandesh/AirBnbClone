//
//  ListingImageCarousal.swift
//  AirBnbClone
//
//  Created by user263604 on 8/10/24.
//

import SwiftUI

struct ListingImageCarousal: View {
    let listing : Listing
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { index in
                            Image(index)
                                .resizable()
                                .scaledToFill()
                        }
                    }
        
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousal(listing: DeveloperPreview.instance.listings[0])
}
