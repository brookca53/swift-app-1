//
//  ViewController.swift
//  SwiftApp1
//
//  Created by C Alex Brooks on 9/15/16.
//  Copyright © 2016 Dennis Harwich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coolLabel: UILabel!
    
    
    
    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var sumLabel: UILabel!
    
    var tapCount = 0
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        
        tapCount += 1
        
        // Can only tap button 5 times!!
        if tapCount <= 5 {
            self.view.backgroundColor = UIColor.red
            coolLabel.text = "You pushed the button \(tapCount) time(s)!!"
            print("Normal button tapped: \(tapCount) time(s)!!")
        } else {
            self.view.backgroundColor = UIColor.blue
            coolLabel.text = "Setting button tap count to 0 "
            tapCount = 0
        }
        
        let answer = Int(text1.text!)! + Int(text2.text!)!
        sumLabel.text = "ANSWER: \(answer)"
        
        
    }
    
    
    @IBAction func coolBtnTap(_ sender: AnyObject) {
        
        coolLabel.text = "Buttons are cool!!"
        print("Cool button tapped")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.green
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

