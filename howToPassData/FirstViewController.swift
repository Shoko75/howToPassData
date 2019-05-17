//
//  ViewController.swift
//  howToPassData
//
//  Created by 橋本 翔子 on 2019-04-16.
//  Copyright © 2019 Shoko Hashimoto. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {
    
    var dataPassedBack = ""

    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    @IBAction func changeToBlue(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let SecondVC = segue.destination as! SecondViewController
            
            SecondVC.data = textField.text!
            
            SecondVC.delegate = self
            
        }
    }
    
    func dataReceived(data: String) {
        lable.text = data
    }
}

