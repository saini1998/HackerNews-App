//
//  PostData.swift
//  KUW-HackerNews
//
//  Created by Aaryaman Saini on 06/09/20.
//  Copyright © 2020 Aaryaman Saini. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
