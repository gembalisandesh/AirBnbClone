//
//  SearchAndFilterBar.swift
//  AirBnbClone
//
//  Created by user263604 on 8/9/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @ObservedObject var viewModel : ExploreViewModel
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                if viewModel.searchLocation.isEmpty {
                    Text("Where To")
                        .font(.footnote)
                        .fontWeight(.semibold)
                } else {
                    Text("\(viewModel.searchLocation)")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
               
                Text(" AnyWhere - AnyTime - AnyWeek")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
        
    }
    
}

#Preview {
    SearchAndFilterBar(viewModel: ExploreViewModel(service: ExploreService()))
}
