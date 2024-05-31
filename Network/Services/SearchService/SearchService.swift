//
//  SearchService.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Alamofire

protocol SearchServiceProtocol {
    func getSearchedMovies(request: SearchRequest, completion:@escaping (Result<PopularMovies, AFError>) -> Void)
}

final class SearchService: BaseService, SearchServiceProtocol {

    func getSearchedMovies(request: SearchRequest, completion:@escaping (Result<PopularMovies, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
}
