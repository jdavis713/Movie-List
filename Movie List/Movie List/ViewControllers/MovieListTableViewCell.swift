//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: AnyObject {
    func shareMovie(for cell: MovieListTableViewCell) -> String
}

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    weak var delegate: MovieListTableViewCellDelegate?
    
    private func updateViews() {
        guard let movies = Movie?.init(movies!) else { return }
        movieTitleLabel.text = movies.name
    }
    
    var movies: Movie? {
        didSet {
            updateViews()
        }
  
    }
    
}
