//
//  Request.swift
//  Agent
//
//  Created by miup on 2017/10/12.
//

import AlgoliaSearch

public protocol AlgoliaRequestProtocol {
    associatedtype HitType: Decodable
    var query: Query { get }
    var indexName: String { get }
}
