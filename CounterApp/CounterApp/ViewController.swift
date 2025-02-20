//
//  ViewController.swift
//  CounterApp
//
//  Created by shinyoungkim on 2/20/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "0"
        resetButton.setTitle("RESET", for: .normal)
        plusButton.setTitle("+", for: .normal)
        minusButton.setTitle("-", for: .normal)
    }

    @IBAction func counterButtonTapped(_ sender: UIButton) {
        guard let currentNumStr = mainLabel.text else { return }
        var currentNum = Int(currentNumStr)!
        
        if sender.currentTitle == "+" {
            currentNum += 1
        } else {
            currentNum -= 1
        }
        mainLabel.text = "\(currentNum)"
        
        if currentNum >= 10 {
            plusButton.isEnabled = false
        } else if currentNum <= -10 {
            minusButton.isEnabled = false
        } else {
            plusButton.isEnabled = true
            minusButton.isEnabled = true
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "0"
        plusButton.isEnabled = true
        minusButton.isEnabled = true
    }
}

