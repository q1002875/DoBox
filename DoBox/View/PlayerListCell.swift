//
//  PlayerListCell.swift
//  DoBox
//
//  Created by Jeff on 2020/4/9.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation
import UIKit
import KKBOXOpenAPISwift
class PlayListCell:UITableViewCell{

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = #colorLiteral(red: 0.2563774586, green: 0.647323966, blue: 0.9323839545, alpha: 1)
        setView()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let KKImageView:UIImageView = {
        let image = UIImageView()
         image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let Label :UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.numberOfLines = 2
        label.textColor = .white
        return label
    }()
    
    
    func setView(){
        let stack = UIStackView(arrangedSubviews: [KKImageView,Label])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        
        self.addSubview(stack)
        
        stack.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stack.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stack.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        KKImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        KKImageView.widthAnchor.constraint(equalToConstant:80).isActive = true
        
    }
    
    
    
}
