//
//  ViewController.swift
//  app2
//
//  Created by Eugenia Lo on 2015/4/9.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func showName(AnyObject){
        nameLabel.text = "My name is Eugenia!!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

