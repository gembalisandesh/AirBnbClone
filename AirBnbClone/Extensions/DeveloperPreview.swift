//
//  DeveloperPreview.swift
//  AirBnbClone
//
//  Created by user263604 on 8/12/24.
//

import Foundation

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    var listings: [Listing] = []
    
    private init() {
        listings = generateSampleListings()
    }
    
    private func generateSampleListings() -> [Listing] {
        let sampleData = [
            ("John Doe", "123 Main St", "New York", "NY", 40.7128, -74.0060),
            ("Jane Smith", "456 Maple Ave", "San Francisco", "CA", 37.7749, -122.4194),
            ("Michael Johnson", "789 Elm St", "Chicago", "IL", 41.8781, -87.6298),
            ("Emily Davis", "101 Pine Rd", "Austin", "TX", 30.2672, -97.7431),
            ("Robert Wilson", "202 Oak St", "Miami", "FL", 25.7617, -80.1918),
            ("Jessica Lee", "303 Birch Ln", "Seattle", "WA", 47.6062, -122.3321),
            ("David Brown", "404 Cedar Ct", "Denver", "CO", 39.7392, -104.9903),
            ("Sophia Martinez", "505 Willow Dr", "Boston", "MA", 42.3601, -71.0589),
            ("James Anderson", "606 Maple Blvd", "Los Angeles", "CA", 34.0522, -118.2437),
            ("Olivia Garcia", "707 Aspen Way", "Houston", "TX", 29.7604, -95.3698)
        ]
        
        return sampleData.enumerated().map { (index, data) in
            Listing(
                id: UUID().uuidString,
                ownerUid: UUID().uuidString,
                ownerName: data.0,
                ownerImageUrl: "ProfileImage", // Placeholder indicating the use of SF Symbol
                numberOfBedrooms: Int.random(in: 1...5),
                numberOfBathrooms: Int.random(in: 1...3),
                numberOfGuests: Int.random(in: 1...8),
                numberOfBeds: Int.random(in: 1...6),
                pricePerNight: Int.random(in: 100...500),
                lattitude: data.4,
                longitude: data.5,
                address: data.1,
                city: data.2,
                imageURLs: ["Listing1","Listing2","Listing3","Listing4"],
                state: data.3,
                tittle: "Beautiful \(data.3) Home",
                ratting: Double.random(in: 3.5...5.0),
                features: [.selfCheckin, .superHost].shuffled(),
                amenities: [.pool, .wifi, .kitchen, .tv].shuffled(),
                type: ListingType.allCases.randomElement() ?? .apartment
            )
        }
    }
}
