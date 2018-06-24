//
//  ViewController.swift
//  MidTerm3
//
//  Created by Eugenia Lo on 2015/5/14.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arrayImage = ["img1","img2","img3","img4", "img5"]
    var p:Int = 0
    var count:Int = 0
    
    @IBOutlet var imageShow: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageShow.image = UIImage(named: "img1")
        count = arrayImage.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextClick(sender: AnyObject) {
        p+=2
        if p >= count{
            p=0
        }
        
        imageShow.image=UIImage(named: arrayImage[p])
    }

    @IBAction func prevClick(sender: AnyObject) {
        p-=2
        if p<0 {
            p = count-2}
        
        imageShow.image=UIImage(named: arrayImage[p])
    }
}

