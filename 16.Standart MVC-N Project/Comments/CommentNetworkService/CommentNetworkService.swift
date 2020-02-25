//
//  CommentNetworkService.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/27/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init () {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL( string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) {(json) in
            do {
                let response = try GetCommentResponse(json: json)
                
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
