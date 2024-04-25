//
//  ViewController.swift
//  tictaktoe
//
//  Created by Baurzhan Kuanyshbayev on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var arrayButton: [UIButton]!
    
    let game = TicTacToe()
    var isX = true
    
    @IBAction func clickButton(_ sender: UIButton) {
        guard let index = arrayButton.firstIndex(of: sender) else {
            return
        }
        game.choiseXO(index: index)
        updateView()
        
    }
    
    @IBOutlet weak var winLabel: UILabel!
    func updateView() {
        for i in game.arrayXO.indices {
            let button = arrayButton[i]
            let XO = game.arrayXO[i]
            if XO.isFaceUp {
                button.setTitle(XO.label, for: .normal)
                button.isEnabled = false
            }
        }
        if let win = game.win() {
            winLabel.text = "Winner \(win)"
        }
    }
    
    @IBAction func Restart(_ sender: UIButton) {
        for i in arrayButton {
            i.setTitle("", for: .normal)
            i.isEnabled = true
        }
        isX = false
    }
}
