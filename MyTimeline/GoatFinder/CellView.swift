//
//  CellView.swift
//  GoatFinder
//
//  Created by Daniel Hauagge on 3/3/16.
//  Copyright © 2016 Daniel Hauagge. All rights reserved.
//

import UIKit
import RealmSwift

class CellView: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bkImageView: UIImageView!
    
    var activity : Activity! {
        didSet {
            nameLabel.text = activity.name
            ageLabel.text = "\(activity.level)"
            bkImageView.image = UIImage(named: activity.name)
        }
    }
}
