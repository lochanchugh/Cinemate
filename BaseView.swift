//
//  BaseView.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import SwiftUI

struct BaseView: ViewModifier {
    func body(content: Content) -> some View {
         content
            .toolbarRole(.editor)
     }
}
