//
//  GetCommentResponce.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/27/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError}
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        print(comments.count)
        self.comments = comments
    }
}
