//
//  WishListsView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import SwiftUI

struct WishListsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32)
            {
                
                VStack(alignment: .leading,spacing: 4){
                    Text("Log into your wishlists")
                        .font(.headline)
                    Text("You can View your wishlists once you login")
                        .font(.caption)
                }
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .frame(width: 360,height: 48)
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius:8))
                    
                }
                Spacer()
            }
            .navigationTitle("WishLists")
            .padding()
        }
        
        
        
    }
}

#Preview {
    WishListsView()
}
