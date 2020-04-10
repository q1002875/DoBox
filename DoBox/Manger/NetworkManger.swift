//
//  NetworkManger.swift
//  DoBox
//
//  Created by Jeff on 2020/4/8.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation

enum NetworkResponse:String {
    case success
    case authenticationError = "You need to be authenticated first."
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated."
    case failed = "Network request failed."
    case noData = "Response returned with no data to decode."
    case unableToDecode = "We could not decode the response."
}

enum Result<String>{
    case success
    case failure(String)
}


struct NetworkManger{
    static let environment : NetworkEnvironment = .getAccessToken
    static let doBoxID = "5de8376c2c035bf2356620a417abee49"
    static let doBoxSecret = "d9c345777446cac464ce7c38747dcc01"
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String>{
        switch response.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
        case 600: return .failure(NetworkResponse.outdated.rawValue)
        default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
}
