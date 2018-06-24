//
//  ViewController.swift
//  MidTerm2
//
//  Created by Eugenia Lo on 2015/5/14.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imgHeight1:CGFloat = 0
    var imgWidth1:CGFloat = 0
    var imgHeight2:CGFloat = 0
    var imgWidth2:CGFloat = 0
    
    @IBOutlet var sliderPhoto: UISlider!
    @IBOutlet var label1: UILabel!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgHeight1=image1.frame.size.height
        imgWidth1=image1.frame.size.width
        imgHeight2=image2.frame.size.height
        imgWidth2=image2.frame.size.width
        sliderPhoto.frame.size.width=280
        sliderPhoto.minimumValue = 0.3
        sliderPhoto.value=1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderChange(sender: AnyObject) {
        image1.frame.size.height = imgHeight1 * CGFloat(sliderPhoto.value)
        image1.frame.size.width = imgWidth1 * CGFloat(sliderPhoto.value)
        image2.frame.size.height = imgHeight2 * CGFloat(sliderPhoto.value)
        image2.frame.size.width = imgWidth2 * CGFloat(sliderPhoto.value);
        label1.text = "Size: \(Int(sliderPhoto.value * 100 ))%"
    }

}

