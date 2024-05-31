//
//  CastResponse.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

struct CastResponse: Codable {
    var cast: [Cast]
}

struct Cast: Codable, Identifiable {
    var id: Int
    var name: String
    var cover: String?
    var character: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case cover = "profile_path"
        case character
    }
}
