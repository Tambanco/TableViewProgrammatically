//
//  InstagramCell.swift
//  TableViewProgrammatically
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit
class InstagramCell: UITableViewCell {
    
    static var reuseID = "InstagramCell"
    
    //1 layer
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        return view
    }()
    
    //2 layer for cardView
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.image = UIImage(named: "avatar.png")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "tambanco"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.addTarget(self, action: #selector(follow), for: .touchUpInside)
        return button
    }()
    
    @objc func follow() {
        print(#function)
    }
    
    let postMenuButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        button.addTarget(self, action: #selector(moreDetails), for: .touchUpInside)
        return button
    }()
    
    @objc func moreDetails() {
        print(#function)
    }
    
    let postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    let likesImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "suit.heart")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let commentsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "message")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let repostsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "paperplane")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let bookmarksImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bookmark")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let likesCountLabel: UILabel = {
        let label = UILabel()
        label.text = "89 отметок " + "Нравится"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 22)
        return label
    }()
    
    let postCommnentLabel: UILabel = {
        let label = UILabel()
        label.text = "summer is for bright colors!"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Посмотреть все комментарии(3)", for: .normal)
        button.addTarget(self, action: #selector(more), for: .touchUpInside)
        return button
    }()
    
    @objc func more() {
        print(#function)
    }
    
    let dateMarkLabel: UILabel = {
        let label = UILabel()
        label.text = "5 января 2020 Г."
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: InstagramCell.reuseID)
        
        addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20).isActive = true
        
        cardView.addSubview(profileImageView)
        cardView.addSubview(usernameLabel)
        cardView.addSubview(followButton)
        cardView.addSubview(postMenuButton)
        cardView.addSubview(postImageView)
        cardView.addSubview(likesImageView)
        cardView.addSubview(commentsImageView)
        cardView.addSubview(repostsImageView)
        cardView.addSubview(bookmarksImageView)
        cardView.addSubview(likesCountLabel)
        cardView.addSubview(postCommnentLabel)
        cardView.addSubview(moreButton)
        cardView.addSubview(dateMarkLabel)
        
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20).isActive = true
        profileImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20).isActive = true
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 20).isActive = true
        usernameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20).isActive = true
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        
        
        
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
