//
//  ImageLoader.swift
//  TableViewProgrammatically
//
//  Created by tambanco 🥳 on 12.11.2021.
//

import UIKit

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
