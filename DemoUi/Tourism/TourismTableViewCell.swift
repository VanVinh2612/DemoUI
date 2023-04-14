//
//  TourismTableViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 11/04/2023.
//

import UIKit

class TourismTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier = "tourismCell"
    static func nib() -> UINib {
        return UINib(nibName: "TourismTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
