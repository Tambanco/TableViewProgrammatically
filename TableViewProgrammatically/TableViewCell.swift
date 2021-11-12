//
//  TableViewCell.swift
//  TableViewProgrammatically
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
    
    let cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 14
        view.backgroundColor = .white
        return view
    }()
    
    let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 14
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@itsdanielkioko"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
}
