//
//  KKManger.swift
//  DoBox
//
//  Created by Jeff on 2020/4/8.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation
import KKBOXOpenAPISwift
//enum Result<T,E:Error>{
//    case success(T)
//    case failure(E)
//}
class KKManger{
   static let KKApi = KKBOXOpenAPI(clientID: "5de8376c2c035bf2356620a417abee49",
                                   secret: "d9c345777446cac464ce7c38747dcc01")
    
    
    typealias completion = (KKTrackInfo) -> ()
    //MARK:get token
    static func loginKK(){
        _ = try? KKApi.fetchAccessTokenByClientCredential { result in
                 switch result {
                 case .error(let error):
                    print("Get token fail\(error)")
                 case .success(_):
                      print("Get token success")
                 }
             }
    }
    
}
