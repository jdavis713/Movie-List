//
//  MovieListController.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class MovieListController {
    
    var movies: [Movie] = []
    
    init() {
        //Test Data
        createMovie(with: "Harlem Nights")
        createMovie(with: "Never Back Down")
    }
    
    func createMovie(with name: String) {
        let movie = Movie(name: name)
        
        movies.append(movie)
    }
}
