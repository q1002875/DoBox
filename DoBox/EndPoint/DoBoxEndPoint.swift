//
//  DoBoxEndPoint.swift
//  DoBox
//
//  Created by Jeff on 2020/4/8.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation

enum NetworkEnvironment{
    case getAccessToken
    
}


public enum BoBoxApi{
    
    //    case
    
}


//extension BoBoxApi:EndPointType{
//    var environmentBaseURL : String {
//        switch NetworkManger.environment {
//        case .getAccessToken: return "https://account.kkbox.com/oauth2/token"
//            
//        }
//    }
//    
//    
//    var baseURL: URL {
//        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
//        return url
//    }
//    
//    var path: String {
//        <#code#>
//    }
//    
//    var httpMethod: HTTPMethod {
//        switch NetworkManger.environment {
//        case .getAccessToken: return .post
//            
//        }
//    }
//    
//    var task: HTTPTask {
//          switch NetworkManger.environment {
//          case .getAccessToken:
//            return .requestParametersAndHeaders(bodyParameters: <#T##Parameters?#>, bodyEncoding: <#T##ParameterEncoding#>, urlParameters: <#T##Parameters?#>, additionHeaders: <#T##HTTPHeaders?#>)
//              default:
//                  return .request
//              }
//    }
//    
//    var headers: HTTPHeaders? {
//             return nil
//    }
//    
//    
//}
