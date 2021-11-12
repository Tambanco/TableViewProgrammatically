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
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return view
    }()
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        return view
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return view
    }()
    
    //2 layer for headerView
    let makePhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "camera")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Instagram"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 22)
        return label
    }()
    
    let directImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "paperplane")
        imageView.clipsToBounds = true
        return imageView
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
    
    //2 layer for bottomView
    let homeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let searchImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let newPostImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "plus.square")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let interestingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "suit.heart")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let personImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: InstagramCell.reuseID)
        
        //1 layer
        addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: <#T##NSLayoutDimension#>, multiplier: <#T##CGFloat#>)
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
