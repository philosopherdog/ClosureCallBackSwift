//
//  MasterViewController.swift
//  CallBackExample
//
//  Created by steve on 2016-04-18.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        self.label.text = ""
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailViewController" {
            let dvc = segue.destinationViewController as! DetailViewController
            dvc.completionHandler = {
                [unowned self](data:String)-> Void  in
                    self.label.text = data
                    self.navigationController?.popToRootViewControllerAnimated(true)
            }
        }
    }
    
}
