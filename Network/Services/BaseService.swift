//
//  BaseService.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Alamofire

protocol BaseServiceProtocol {
    func performRequest<T:Decodable>(request: BaseRequest, completion:@escaping (Result<T, AFError>) -> Void)
}

class BaseService: BaseServiceProtocol {
    func performRequest<T:Decodable>(request: BaseRequest, completion:@escaping (Result<T, AFError>) -> Void) {
        if request.blocks {
            //loading
        }
        
        AF.request(request)
            .responseDecodable (decoder: JSONDecoder()){ (response: DataResponse<T, AFError>) in
                completion(response.result)
                if request.blocks {
                    //loading
                }
            }
    }
}
