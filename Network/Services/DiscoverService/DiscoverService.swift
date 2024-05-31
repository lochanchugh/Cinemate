//
//  DiscoverService.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Alamofire

protocol DiscoverServiceProtocol {
    func getPopularMovies(request: DiscoverRequest, completion: @escaping (Result<PopularMovies, AFError>) -> Void)
}

final class DiscoverService: BaseService, DiscoverServiceProtocol {
    func getPopularMovies(request: DiscoverRequest, completion: @escaping (Result<PopularMovies, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
}
