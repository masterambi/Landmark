//
//  LandmarkTableViewCell.swift
//  Landmark
//
//  Created by Ramzy Rashaun Arief on 21/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class LandmarkTableViewCell: UITableViewCell {

    @IBOutlet weak var landmarkThumbnailImageView: UIImageView!
    @IBOutlet weak var landmarkNameLabel: UILabel!
    @IBOutlet weak var landmarkLocationLabel: UILabel!
    @IBOutlet weak var landmarkCheckImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
