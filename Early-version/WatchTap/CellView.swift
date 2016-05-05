//
//  CellView.swift
//  WatchTap
//
//  Created by Yanbo Li on 3/5/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit

class CellView: UITableViewCell {

    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var LevelLabel: UILabel!
    
    var migraine: Migraine!{
        didSet {
            DateLabel.text = migraine.date
            LevelLabel.text = "\(migraine.level)"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
