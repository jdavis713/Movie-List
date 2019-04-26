//
//  MovieList.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

struct Movie {
    
    let name: String
    var isSeen: Bool
    
    init(name: String) {
       self.name = name
        self.isSeen = false
    }
    
}
