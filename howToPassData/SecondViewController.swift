//
//  SecondViewController.swift
//  howToPassData
//
//  Created by 橋本 翔子 on 2019-04-16.
//  Copyright © 2019 Shoko Hashimoto. All rights reserved.
//

import UIKit

protocol CanReceive {
    
    func dataReceived(data: String)
    
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?

    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func sendDataBack(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    
}
