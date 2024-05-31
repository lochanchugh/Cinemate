//
//  Utils.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class Utils {
    static func queryString(dictionary: [String:Any]?) -> String {
        guard let dictionary = dictionary else { return "" }
        var queryString = "?"
        dictionary.forEach {
            queryString += "&\($0.key)=\($0.value)"
        }
        return queryString
    }
}
