//
//  ViewController.swift
//  2015430
//
//  Created by Eugenia Lo on 2015/4/30.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomNumber: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seed(sender: UIButton) {
        srandom(CUnsignedInt(time(nil)))
        randomNumber.text = "Generator Seeded"
    }
    

    @IBAction func generate(sender: UIButton) {
        var generated = (random()%100)+1
        randomNumber.text = "Eugenia,Random Number:\(generated)"
    }
}

