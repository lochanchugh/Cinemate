//
//  Categories.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

struct Categories: Codable {
    let genres: [Category]
}

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
}
