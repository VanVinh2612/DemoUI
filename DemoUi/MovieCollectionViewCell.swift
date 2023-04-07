//
//  MovieCollectionViewCell.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 06/04/2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    func setUp(with movie: Movie) {
        movieImageView.image = UIImage(named: movie.image)
        titleLabel.text = movie.title
    }
}

