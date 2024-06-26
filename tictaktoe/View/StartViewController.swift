//
//  StartViewController.swift
//  tictaktoe
//
//  Created by Baurzhan Kuanyshbayev on 24.04.2024.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "withComputer" {
            let destination = segue.destination as! ViewController
            destination.game.isComputer = true
        }
    }
}
