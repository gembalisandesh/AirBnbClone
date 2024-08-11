//
//  ExploreService.swift
//  AirBnbClone
//
//  Created by user263604 on 8/12/24.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.instance.listings
    }
}
