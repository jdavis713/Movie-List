//
//  MoviesTabBarViewController.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

    let movieListController = MovieListController()
    override func viewDidLoad() {
        super.viewDidLoad()

        for childViewController in children {
            if let childViewController = childViewController as?
                MovieListPresenter {
                childViewController.movieListController = movieListController
            }
        }
    }


}
