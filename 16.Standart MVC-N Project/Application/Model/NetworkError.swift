//
//  NetworkError.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/27/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
