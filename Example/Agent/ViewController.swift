//
//  ViewController.swift
//  Agent
//
//  Created by miup on 10/12/2017.
//  Copyright (c) 2017 miup. All rights reserved.
//

import UIKit
import Agent

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = ActorsRequest()
        Agent.shared.search(request: request) { result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
    }

}


class ActorsRequest: AlgoliaRequestProtocol {
    typealias HitType = Actor

    var indexName: String {
        get {
            return "getstarted_actors"
        }
    }

    var query: Query {
        get {
            let query = Query()
            query.hitsPerPage = 2
            return query
        }
    }
}

struct Actor: Decodable {
    let objectID: String
    let name: String
    let image_path: String
    let rating: Int
}
