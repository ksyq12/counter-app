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
        let currentNum = Int(currentNumStr)!
        var counter = Counter(count: currentNum, sender: sender, plusButton: plusButton, minusButton: minusButton)
        
        let count = counter.calculate(sender: sender)
        mainLabel.text = "\(count)"
        
        counter.isActivated(plusButton: plusButton, minusButton: minusButton)
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "0"
        plusButton.isEnabled = true
        minusButton.isEnabled = true
    }
}

