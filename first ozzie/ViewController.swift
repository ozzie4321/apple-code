//
//  ViewController.swift
//  first ozzie
//
//  Created by student on 7/10/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        clockLabel.text = String (clock)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
 var timer = Timer()
    var isRunning = false
    var clock = 210
    
    @IBOutlet weak var clockLabel: UILabel!
    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            clockLabel.text = String  (clock)
            
        }
    }
    
    @IBAction func play(_ sender: Any) {
        if isRunning == false {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    @IBAction func pause(_ sender: Any) {
        if isRunning == true {
            isRunning = false
            timer.invalidate()
            
        }
        
    }
    @IBAction func subten(_ sender: Any) {
        if clock > 9 {
            clock -= 10
            clockLabel.text = String (clock)
        }
    }
    @IBAction func reset(_ sender: Any) {
        clock = 210
        clockLabel.text = String (clock)
    }
    @IBAction func addTen(_ sender: Any) {
        clock += 10
        clockLabel.text = String (clock)
    }
    
}

