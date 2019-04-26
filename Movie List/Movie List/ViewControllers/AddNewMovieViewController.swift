//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Jordan Davis on 4/26/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {
    var movieListController: MovieListController?
    
    @IBOutlet var movieTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        //print("Add Movie")
        
        guard let name = movieTitleTextField.text else { return }
        
        movieListController?.createMovie(with: name)
    }

}
