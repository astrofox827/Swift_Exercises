//
//  ViewController.swift
//  ImageShow
//
//  Created by Eugenia Lo on 2015/5/7.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayImage = ["img01", "img02", "img03", "img04", "img05", "img06"]
    var p:Int = 0
    var count:Int = 0
    
    
    @IBOutlet var imageShow: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageShow.image=UIImage(named: "img01")
        count=arrayImage.count
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextClick(sender: AnyObject) {
        p--
        if p<0 {
            p=count-1
        }
        imageShow.image=UIImage(named: arrayImage[p])
    }

    @IBAction func prevClick(sender: AnyObject) {
        p++
        if p==count {
            p=0
        }
        imageShow.image=UIImage(named: arrayImage[p])

    }

}

