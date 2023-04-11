//
//  ImageTableViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 11/04/2023.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    static let identifier = "imageCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    func configure() {
        iconImageView.image = UIImage(named: "boldType")
        iconImageView.contentMode = .scaleAspectFill
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
