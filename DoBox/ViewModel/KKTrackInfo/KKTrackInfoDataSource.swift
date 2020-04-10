//
//  KKTrackInfoDataSource.swift
//  DoBox
//
//  Created by Jeff on 2020/4/9.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation
import UIKit
import KKBOXOpenAPISwift
import Kingfisher
class GenericDataSource<T>:NSObject{
    var data :DynamicValue<[T]> = DynamicValue([])
    
}

class KKInfoDataSource:GenericDataSource<KKPlaylistInfo>,UITableViewDataSource{

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     return "推薦精選"
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PlayListCell
        
        cell.Label.text = "\(data.value[indexPath.row].title)"
        cell.KKImageView.kf.setImage(with:self.data.value[indexPath.row].images[0].url!)
        return cell
    }
    
    
}

