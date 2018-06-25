//
//  ViewController.swift
//  pitcht
//
//  Created by Eugenia Lo on 2015/6/11.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pinchProcess(sender: UIPinchGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Began{
            //zooming
        }else if sender.state == UIGestureRecognizerState.Changed{
            var frame = img.frame
            var s=sender.scale
            var w=img.frame.width
            var h=img.frame.height
            println("scale\(s)")
            if s*w > 100 && s*w < 400 {
                //reset the frame
                img.frame=CGRectMake(frame.origin.x, frame.origin.y, s*w, s*h)
            }else if sender.state == UIGestureRecognizerState.Ended{
                //end of Zooming
            }
        }
    }

}

