//
//  ListingItemView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/9/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing : Listing
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarousal(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city),\(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("23 km")
                        .foregroundStyle(.gray)
                    Text("shsh")
                        .foregroundStyle(.gray)
                    HStack (spacing: 4){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("Night")
                            
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("\(listing.ratting)")
                        
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.instance.listings[0])
}
