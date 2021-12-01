//
//  ViewController.swift
//  ColdCall_v2
//
//  Created by Shahad Nasser on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var coldCallButton: UIButton!
    
    let namesBank = ["Shahad", "Adam", "Vlad", "Freida", "Lottie", "Tessa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Start Calling!"
        numberLabel.isHidden = true
    }
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        let number = Int.random(in: 1...5)
        numberLabel.isHidden = false
        numberLabel.text = "\(number)"
        switch number {
        case 1...2: numberLabel.textColor = UIColor.red
        case 3...4: numberLabel.textColor = UIColor.orange
        case 5: numberLabel.textColor = UIColor.green
        default: numberLabel.isHidden = true
        }
        nameLabel.text = namesBank[Int.random(in: 0..<namesBank.count)]
    }
    

}

