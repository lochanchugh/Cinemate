//
//  CastViewModel.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class CastViewModel: ObservableObject {
    
    var cast: Cast?
    
    init(cast: Cast?) {
        self.cast = cast
    }
    
    var id: Int {
        cast?.id ?? 0
    }
    
    var name: String {
        cast?.name ?? ""
    }
    
    var character: String {
        cast?.character ?? ""
    }
    
    var imageUrl: String {
        ConfigManager.shared.imageURL + (cast?.cover ?? "")
    }
    
    
}
