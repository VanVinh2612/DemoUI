//
//  CustomMovieCollectionViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 14/04/2023.
//

import UIKit

class CustomMovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier = "customMovieCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomMovieCollectionViewCell", bundle: nil)
    }
    func setUp(with movie: Movie) {
        nameImageView.image = UIImage(named: movie.image)
        titleLabel.text = movie.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        // Initialization code
//        titleLabel.text = "asdjaksjdkasjdkr"
    }
    
}
