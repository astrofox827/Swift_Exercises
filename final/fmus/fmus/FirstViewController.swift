//
//  FirstViewController.swift
//  fmus
//
//  Created by Eugenia Lo on 2015/6/18.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var picv: UIImageView!
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var b4: UIButton!
    @IBOutlet var b5: UIButton!
    @IBOutlet var b6: UIButton!
    
    var imgar = ["img1","img2"]
    var p = 0
    
    var bt1 = 0
    var bt2 = 0
    var bt3 = 0
    var bt4 = 0
    var bt5 = 0
    var bt6 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func swipeProcess(sender: UISwipeGestureRecognizer) {
        
    }
    
    @IBAction func b1p(sender: AnyObject) {
        bt1 = bt1++
        songList.getValue(bt1)
    }
    
    @IBAction func b2p(sender: AnyObject) {
        bt2 = bt2++
        songList.getValue(bt2)
    }
    
    @IBAction func b3p(sender: AnyObject) {
        bt3 = bt3++
        songList.getValue(bt3)
    }
    
    @IBAction func b4p(sender: AnyObject) {
        bt4 = bt4++
        songList.getValue(bt4)
    }
    
    @IBAction func b5p(sender: AnyObject) {
        bt5 = bt5++
        songList.getValue(bt5)
    }
    
    @IBAction func b6p(sender: AnyObject) {
        bt6 = bt6++
        songList.getValue(bt6)
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                p = 0
                b1.enabled = true;
                b2.enabled = true;
                b3.enabled = true;
                b4.enabled = false;
                b5.enabled = false;
                b6.enabled = false;
            case UISwipeGestureRecognizerDirection.Left:
                p = 1
                b1.enabled = false;
                b2.enabled = false;
                b3.enabled = false;
                b4.enabled = true;
                b5.enabled = true;
                b6.enabled = true;
            default:
                b1.enabled = true;
                b2.enabled = true;
                b3.enabled = true;
                b4.enabled = false;
                b5.enabled = false;
                b6.enabled = false;
                break
            }
        }
        picv.image = UIImage(named: imgar[p])

    }
}
