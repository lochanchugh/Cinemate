//
//  SearchViewModel.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class SearchViewModel: ObservableObject {
    
    @Published var movies: [PopularMovie] = []
    private var service: SearchServiceProtocol
    
    init(service: SearchServiceProtocol) {
        self.service = service
    }
    
    func fetchSearchedMovies(query: String, completion: @escaping (Result<PopularMovies, Error>) -> Void) {
        let params = SearchRequestParams(query: query)
        let request = SearchRequest(params: params)
        
        service.getSearchedMovies(request: request) { [weak self] response in
            switch response {
            case .success(let result):
                self?.movies = result.results
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
        }   
    }   
}
