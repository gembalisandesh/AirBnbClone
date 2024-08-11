//
//  MainTabView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishListsView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
