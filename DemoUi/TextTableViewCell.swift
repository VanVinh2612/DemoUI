//
//  TextTableViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 11/04/2023.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier = "titleCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TextTableViewCell", bundle: nil)
    }
    
    func setUpTitle() {
        let quote = "The Bold Type"
        let font = UIFont.systemFont(ofSize: 24)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        paragraphStyle.firstLineHeadIndent = 5.0

        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.green,
            .paragraphStyle: paragraphStyle
        ]

        titleLabel.attributedText = NSAttributedString(string: quote, attributes: attributes)
        
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
