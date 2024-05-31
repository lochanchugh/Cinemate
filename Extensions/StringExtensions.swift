//
//  StringExtensions.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

extension String {
    func formatDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: self) else { return "" }
        dateFormatter.dateFormat = "d MMM yyyy"
        dateFormatter.locale = Locale(identifier: "en_us")
        return dateFormatter.string(from: date)
    }
}
