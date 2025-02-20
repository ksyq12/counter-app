//
//  Counter.swift
//  CounterApp
//
//  Created by shinyoungkim on 2/20/25.
//

import UIKit

struct Counter {
    var count: Int
    var sender: UIButton
    var plusButton: UIButton
    var minusButton: UIButton
    
    mutating func calculate(sender: UIButton) -> Int {
        if sender.currentTitle == "+" {
            self.count += 1
        } else {
            self.count -= 1
        }
        return count
    }
    
    func isActivated(plusButton: UIButton, minusButton: UIButton) {
        if self.count >= 10 {
            plusButton.isEnabled = false
        } else if self.count <= -10 {
            minusButton.isEnabled = false
        } else {
            plusButton.isEnabled = true
            minusButton.isEnabled = true
        }
    }
}
