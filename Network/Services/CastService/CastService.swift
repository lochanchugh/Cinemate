//
//  CastService.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Alamofire

protocol CastServiceProtocol {
    func getCast(request: CastRequest, completion:@escaping (Result<CastResponse, AFError>) -> Void)
}

final class CastService: BaseService, CastServiceProtocol {
    
    func getCast(request: CastRequest, completion:@escaping (Result<CastResponse, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
}
