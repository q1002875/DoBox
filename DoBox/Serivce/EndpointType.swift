//
//  EndpointType.swift
//  DoBox
//
//  Created by Jeff on 2020/4/8.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation

public enum HTTPMethod : String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
}
public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?,
        additionHeaders: HTTPHeaders?)
    
    // case download, upload...etc
}


protocol EndPointType {
    var baseURL:URL{get}
    var path:String{get}
    var httpMethod:HTTPMethod{get}
    var task:HTTPTask{get}
    var headers:HTTPHeaders{get}
}
