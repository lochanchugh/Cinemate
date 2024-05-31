//
//  ViewExtensions.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI

extension View {
    func giveShadow() -> some View {
        self
            .shadow(color: .gray, radius: 4, x: 2.0, y: 2.0)
    }
}
