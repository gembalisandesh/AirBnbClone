//
//  ProfileOptionRowView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName : String
    let tittle : String
    var body: some View {
        VStack {
            HStack(spacing: 8) {
                Image(systemName: imageName)
                Text(tittle)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", tittle: "Settings")
}
