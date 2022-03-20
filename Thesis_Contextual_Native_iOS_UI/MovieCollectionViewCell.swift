//
//  MovieCollectionViewCell.swift
//  Thesis_Contextual_Native_iOS_UI
//
//  Created by Emre Dogan on 20/03/2022.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    func setup(with movie: Movie) {
        image.image = movie.image
        title.text = movie.title
    }
}
