//
//  CastRequest.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class CastRequest: BaseRequest {
    
    var movieId: Int?
    
    init(movieId: Int) {
        super.init()
        self.movieId = movieId
        path = String.init(format:  RequestPaths.credits.rawValue, "\(movieId)")
    }
}
