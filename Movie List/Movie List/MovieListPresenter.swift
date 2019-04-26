//
//  MovieListPresenter.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

protocol MovieListPresenter: AnyObject {
    
    var movieListController: MovieListController? { set get }
}
