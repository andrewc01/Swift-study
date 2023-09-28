//
//  Location.swift
//  BucketList
//
//  Created by Andy C on 9/28/23.
//

import Foundation

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}
