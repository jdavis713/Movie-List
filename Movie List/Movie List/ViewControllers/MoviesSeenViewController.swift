//
//  MoviesSeenViewController.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class MoviesSeenViewController: UIViewController, MovieListPresenter {
    var movieListController: MovieListController?
    
    var movieListTableViewController: MovieListTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MovieListTable" {
            
            guard let movieListTVC = segue.destination as? MovieListTableViewController
                else { return }
            
            movieListTVC.movieListController = movieListController
            movieListTVC.delegate = self as! MovieEnteredDelegate
            movieListTableViewController = movieListTVC
        } else { return }
    }

}

