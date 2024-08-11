//
//  Listings.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import Foundation

struct Listing : Identifiable, Codable,Hashable {
    let id : String
    let ownerUid : String
    let ownerName : String
    let ownerImageUrl : String
    let numberOfBedrooms : Int
    let numberOfBathrooms : Int
    let numberOfGuests : Int
    let numberOfBeds : Int
    var pricePerNight : Int
    let lattitude : Double
    let longitude : Double
    let address : String
    let city : String
    var imageURLs : [String]
    let state : String
    let tittle : String
    var ratting : Double
    var features : [ListingFeatures]
    var amenities : [ListingAmenities]
    let type : ListingType
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckin
    case superHost
    
    var id: Int {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .selfCheckin: return "Self Check-in"
        case .superHost: return "Super Host"
        }
    }
    
    var imageName: String {
        switch self {
        case .selfCheckin: return "key.fill"
        case .superHost: return "star.fill"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckin:
            return "Easily access the property with a self-service check-in."
        case .superHost:
            return "Host with high ratings and excellent service history."
        }
    }
}



enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case balcony
    case office
    
    var id: Int {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .pool:  return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .balcony: return "Balcony"
        case .office: return "Office"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "drop.fill"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer.fill"
        case .tv: return "tv.fill"
        case .alarmSystem: return "shield.fill"
        case .balcony: return "house.fill"
        case .office: return "briefcase.fill"
        }
    }
}
enum ListingType: Int, Codable, Identifiable, Hashable ,CaseIterable{
    case apartment
    case house
    case villa
    case townhouse
    
    
    var id: Int {
        return self.rawValue
    }
    
    var description: String {
        switch self {
       
        case .apartment:
            return "Apartment"
        case .house:
            return "House"
        case .villa:
            return "Villa"
        case .townhouse:
            return "Townhouse"
        }
    }
    
    
}
