//
//  SimpleTableViewCell.swift
//  TableViewProgrammatically
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
    
    static let reuseID = "cardViewCell"
    
    let cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 14
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
        imageView.image = UIImage(named: "avatar.png")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@tambanco"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: SimpleTableViewCell.reuseID)
        
        //1 layer - UIView
        addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cardView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        cardView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cardView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        //2 layer - UIImageView
        cardView.addSubview(postImageView)
        
        postImageView.translatesAutoresizingMaskIntoConstraints = false
        postImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 12).isActive = true
        postImageView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -12).isActive = true
        postImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 12).isActive = true
        postImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -12).isActive = true
        
        
        //3 layer - UIImageView
        cardView.addSubview(profileImageView)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.topAnchor.constraint(equalTo: postImageView.topAnchor, constant: 12).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: postImageView.leadingAnchor, constant: 12).isActive = true
        
        //4 layer - UILabel
        cardView.addSubview(usernameLabel)
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        usernameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 8).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
