//
//  NewWishTableViewCell.swift
//  Wish List (Lesson 95)
//
//  Created by Nik Krasun on 25.08.2024.
//

import UIKit

class NewWishTableViewCell: UITableViewCell {

     
    @IBOutlet private weak var statusView: UIView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusView.layer.cornerRadius = statusView.bounds.width / 2
    }
     
    func update(name: String) {
        nameLabel.text = name
    }


}
