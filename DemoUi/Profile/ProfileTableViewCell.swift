//
//  ProfileTableViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 12/04/2023.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    static let identifies = "profileCell"
    static func nib() -> UINib {
        return UINib(nibName: "ProfileTableViewCell", bundle: nil)
    }
    
    func setUp(with user: User) {
        firstNameLabel.text = user.firstName
        lastNameLabel.text = user.lastName
        ageLabel.text = String(user.age)
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
