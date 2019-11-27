//
//  NetworkService.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/26/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    public func getData( url: URL, comlection: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data  else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    comlection(json)
                }
            } catch  {
                print(error)
            }
        }.resume()
    }
}
