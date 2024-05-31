//
//  CategoriesService.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Alamofire

protocol CategoriesServiceProtocol {
    func getCategories(request: CategoriesRequest, completion: @escaping (Result<Categories, AFError>) -> Void)
}

final class CategoriesService: BaseService, CategoriesServiceProtocol {
    func getCategories(request: CategoriesRequest, completion: @escaping (Result<Categories, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
}
