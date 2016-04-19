//
//  DetailViewController.swift
//  CallBackExample
//
//  Created by steve on 2016-04-18.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var completionHandler:((data: String)->(Void))?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveTapped(sender: UIBarButtonItem) {
        let text = self.textField.text
        self.completionHandler!(data: text!)
    }
}
