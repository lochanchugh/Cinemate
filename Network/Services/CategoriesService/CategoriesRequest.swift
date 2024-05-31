//
//  CategoriesRequest.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class CategoriesRequest: BaseRequest {
    
    var params: CategoriesRequestParams?
    
    init(params: CategoriesRequestParams) {
        super.init()
        self.params = params
        path = RequestPaths.categories.rawValue
        query = Utils.queryString(dictionary: params.dict)
    }
}

struct CategoriesRequestParams: Codable {
    var language = "en-US"
}
