//
//  AppError.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation
import Alamofire

enum AppError: Error {
    case getPopularMoviesFailed
    case getCategoriesFailed
    case getCastFailed
    case searchMoviesFailed
}
