//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/9/24.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    @State private var showDestinationSearchView =  false
    
    var body: some View {
        NavigationStack{
            VStack{
                if showDestinationSearchView {
                    DestinationSearchView(show: $showDestinationSearchView,viewModel: viewModel)
                        
                } else {
                    
                    ScrollView {                        SearchAndFilterBar(viewModel: viewModel)
                            .onTapGesture {
                                withAnimation(.snappy) {
                                    showDestinationSearchView.toggle()
                                }
                            }
                        
                        LazyVStack(spacing : 32) {
                            ForEach(viewModel.listings) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView(listing: listing)
                                        .frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))

                                    
                                }
                            }
                        }
                        
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                    }
                }
                
                
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
