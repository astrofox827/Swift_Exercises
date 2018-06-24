//
//  ViewController.swift
//  MidTerm1
//
//  Created by Eugenia Lo on 2015/5/14.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    var a = 1
    var b = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1t(sender: AnyObject) {
        label1.text = "first button pressed \(a)"
        a += 1
    }

    @IBAction func button2t(sender: AnyObject) {
        label2.text = "second button pressed \(b)"
        b += 1
    }
}

