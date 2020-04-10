//
//  ViewController.swift
//  DoBox
//
//  Created by Jeff on 2020/4/8.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import UIKit
import KKBOXOpenAPISwift


class ViewController: UIViewController {

    
 let dataSource = KKInfoDataSource()

    lazy var viewModel:KKtrackInfoModel = {
           let viewModel = KKtrackInfoModel(dataSource: dataSource)
           return viewModel
       }()
    
    lazy var tableview:UITableView = {
          let tableframe = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
        let table = UITableView(frame: tableframe, style: .insetGrouped)
          table.register(PlayListCell.self, forCellReuseIdentifier: "cell")
          table.dataSource = dataSource
          table.delegate = self
        table.backgroundColor = .systemGray4
          return table
      }()

    override func viewDidLoad() {
        super.viewDidLoad()
        KKManger.loginKK()
        
        self.view.addSubview(tableview)
        //綁定監聽收到資料reload data
        self.dataSource.data.addAndNotify(self) { [weak self] _ in
            self?.tableview.reloadData()
        }
        
        viewModel.fetchPlayList()
        //加載
        
            
    }

  
}



extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 80
      }
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let url = self.dataSource.data.value[indexPath.row].url
          UIApplication.shared.open(url!)
      }
}
