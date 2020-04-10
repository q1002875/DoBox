//
//  KKTrackInfoViewModel.swift
//  DoBox
//
//  Created by Jeff on 2020/4/9.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation
import KKBOXOpenAPISwift
struct KKtrackInfoModel {
    static let KKApi = KKBOXOpenAPI(clientID: "5de8376c2c035bf2356620a417abee49",
                                    secret: "d9c345777446cac464ce7c38747dcc01")
    var finish = false
    //     typealias completion = (KKTrackInfo) -> ()
    //     weak var dataSource:GenericDataSource<KKTrackInfo>?
    weak var dataSource:GenericDataSource<KKPlaylistInfo>?
    init (dataSource:GenericDataSource<KKPlaylistInfo>?){
        self.dataSource = dataSource
    }
    //    func searchKK(_ searchText:String){
    //        _ = try? KKtrackInfoModel.KKApi.fetch(track:searchText, callback: { (result) in
    //              switch result{
    //              case .success(let info):
    //                    print(info)
    //                   self.dataSource?.data.value = [info]
    //              case .error(_):
    //                  print("error")
    //              }
    //
    //          })
    //      }
    func fetchPlayList(){
        
        _ = try? KKtrackInfoModel.KKApi.fetchFeaturedPlaylists(callback: { (result) in
            switch result{
            case .success(let playlistInfo):
                self.dataSource?.data.value = playlistInfo.playlists
       
            case .error(_):
                print("error")
            }
        })
        
    }

    

}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
