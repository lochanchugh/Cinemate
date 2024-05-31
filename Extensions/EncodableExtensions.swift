//
//  EncodableExtensions.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

extension Encodable {
    var dict : [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] else { return nil }
        return json
    }
}
