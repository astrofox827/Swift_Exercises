//
//  SecondViewController.swift
//  fmus
//
//  Created by Eugenia Lo on 2015/6/18.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class SecondViewController: UIViewController{
    

    @IBOutlet var playbutton: UIButton!
    @IBOutlet var stpswitch: UISwitch!
    @IBOutlet var slider: UISlider!
    
    var aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changenulll(), ofType: "mp3")!)
    
    
    var audioPlyr = AVAudioPlayer()
    
    var btn1p = 0
    var btn2p = 0
    var btn3p = 0
    var btn4p = 0
    var btn5p = 0
    var btn6p = 0
    
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var b4: UIButton!
    @IBOutlet var b5: UIButton!
    @IBOutlet var b6: UIButton!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


    @IBAction func volslider(sender: UISlider) {
        audioPlyr.volume = slider.value
        audioPlyr.play()
    }

    @IBAction func pa1(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen1(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }

    @IBAction func pa2(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen2(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }
    
    @IBAction func pa3(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen3(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }
    
    @IBAction func pa4(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen4(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }
    
    @IBAction func pa5(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen5(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }
    
    @IBAction func pa6(sender: AnyObject) {
        aurl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songList.changen6(), ofType: "mp3")!)
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlyr = AVAudioPlayer(contentsOfURL: aurl, error: nil)
        audioPlyr.volume = slider.value
        b1.enabled = songList.sendValue()
        b2.enabled = songList.sendValue()
        b3.enabled = songList.sendValue()
        b4.enabled = songList.sendValue()
        b5.enabled = songList.sendValue()
        b6.enabled = songList.sendValue()
    }
    
    @IBAction func playbtn(sender: UIButton) {
        audioPlyr.volume = slider.value
        audioPlyr.play()
    }
    
    @IBAction func stopSwitch(sender: UISwitch) {
        if stpswitch.on{
            playbutton.enabled = true
            slider.enabled = true
        }else{
            playbutton.enabled = false
            slider.enabled = false
            audioPlyr.stop()
            audioPlyr.currentTime = 0
        }
    }
}

