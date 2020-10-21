//
//  ViewController.swift
//  cogniteq_prjct
//
//  Created by Dmitry on 10/17/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!

    @IBAction func imageButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "showList", sender: nil)
    }
    @IBAction func searchButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "showList", sender: nil)
    }
}
