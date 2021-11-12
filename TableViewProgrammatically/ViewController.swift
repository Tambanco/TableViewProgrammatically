//
//  ViewController.swift
//  TableViewProgrammatically
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableView: UITableView!
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)
        return view
    }()
    
    private let imageURLs = [
        "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1064&q=80",
        "https://images.unsplash.com/photo-1522196772883-393d879eb14d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1585&q=80",
        "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
        "https://images.unsplash.com/photo-1569173112611-52a7cd38bea9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
        "https://images.unsplash.com/photo-1579783483458-83d02161294e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1397&q=80",
        "https://images.unsplash.com/photo-1520974735194-9e0ce82759fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initHeaderView()
        initializeTableView()
        
    }
    
    private func initHeaderView() {
        let makePhotoImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(systemName: "camera")
            imageView.tintColor = #colorLiteral(red: 0.0431372549, green: 0.0431372549, blue: 0.03921568627, alpha: 1)
            imageView.clipsToBounds = true
            return imageView
        }()

        let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Instagram"
            label.tintColor = #colorLiteral(red: 0.0431372549, green: 0.0431372549, blue: 0.03921568627, alpha: 1)
            label.textAlignment = .center
            label.font = UIFont(name: "Arial", size: 22)
            return label
        }()

        let directImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.tintColor = #colorLiteral(red: 0.0431372549, green: 0.0431372549, blue: 0.03921568627, alpha: 1)
            imageView.image = UIImage(systemName: "paperplane")
            imageView.clipsToBounds = true
            return imageView
        }()
        
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        headerView.addSubview(makePhotoImageView)
        headerView.addSubview(titleLabel)
        headerView.addSubview(directImageView)
        
        makePhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        makePhotoImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 60).isActive = true
        makePhotoImageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 60).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        
        directImageView.translatesAutoresizingMaskIntoConstraints = false
        directImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 60).isActive = true
        directImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20).isActive = true
        
        
    }
    
    private func initializeTableView() {
        tableView = UITableView()
        tableView.rowHeight = 400
        tableView.backgroundColor = .clear
        
        self.view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        tableView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.reuseID)
        
        tableView.register(InstagramCell.self, forCellReuseIdentifier: InstagramCell.reuseID)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: InstagramCell.reuseID, for: indexPath) as! InstagramCell
//        cell.postImageView.load(url: URL(string: imageURLs[indexPath.row])!)
        
        return cell
    }
}
