//
//  ViewController.swift
//  slideBar
//
//  Created by Eugenia Lo on 2015/5/7.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imgWidth:CGFloat = 0
    var imgHeight:CGFloat = 0
    @IBOutlet var switchPhoto: UISwitch!
    @IBOutlet var image: UIImageView!
    @IBOutlet var sliderPhoto: UISlider!
    @IBOutlet var labelMSG: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgWidth=image.frame.size.width
        imgHeight=image.frame.size.height
        sliderPhoto.frame.size.width = 280
        sliderPhoto.minimumValue = 0.3
        sliderPhoto.value = 1
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChange(sender: UISwitch) {
        if switchPhoto.on{
            sliderPhoto.enabled=true
        }
        else{
            sliderPhoto.enabled=false
        }
        
    }


    @IBAction func sliderChange(sender: UISlider) {
        if switchPhoto.on{
            image.frame.size.width = imgWidth * CGFloat(sliderPhoto.value)
            image.frame.size.height = imgHeight * CGFloat(sliderPhoto.value)
            labelMSG.text = "Size:\(Int(sliderPhoto.value*100))%"
        }
    }


}