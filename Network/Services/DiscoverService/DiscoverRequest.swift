//
//  DiscoverRequest.swift
//  Cinemate
//
//  Created by Lochan on 15.03.2024.
//

import Foundation

final class DiscoverRequest: BaseRequest {
    
    var params: DiscoverRequestParams?
    
    init(params: DiscoverRequestParams) {
        super.init()
        self.params = params
        path = RequestPaths.discover.rawValue
        query = Utils.queryString(dictionary: params.dict)
    }
}

struct DiscoverRequestParams: Codable {
    var page: Int?
    var language = "en-US"
    var sort = "popularity.desc"
    var genre: String?
    
    enum CodingKeys: String, CodingKey {
        case page
        case language
        case sort = "sort_by"
        case genre = "with_genres"
    }
}
