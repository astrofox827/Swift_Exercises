//
//  ViewController.swift
//  ImageViewRe
//
//  Created by Eugenia Lo on 2015/5/8.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imgWidth:CGFloat = 0
    var imgHeight:CGFloat = 0
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var switchPhoto: UISwitch!
    @IBOutlet var sliderPhoto: UISlider!
    @IBOutlet var labelMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgWidth = image.frame.size.width
        imgHeight = image.frame.size.height
        sliderPhoto.frame.size.width = 280
        sliderPhoto.minimumValue = 0.3
        sliderPhoto.value = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChange(sender: UISwitch) {
        if switchPhoto.on{
            sliderPhoto.enabled = true
        }else{
            sliderPhoto.enabled = false
        }
        
    }

    @IBAction func sliderChange(sender: AnyObject) {
        if switchPhoto.on{
            image.frame.size.width = imgWidth * CGFloat(sliderPhoto.value)
            image.frame.size.height = imgHeight * CGFloat(sliderPhoto.value);
            labelMsg.text = "Size:\(Int(sliderPhoto.value * 100))%"
        }
    }
}

