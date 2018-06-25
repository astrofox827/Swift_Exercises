//
//  ViewController.swift
//  12345
//
//  Created by Eugenia Lo on 2015/4/23.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // @IBOutlet weak var myStation: UIButton!
    @IBOutlet weak var stationBand: UILabel!
    @IBOutlet weak var stationFrequency: UILabel!
    @IBOutlet weak var stationName: UILabel!
    
    var myStation:RadioStation
    
    required init(coder aDecoder:NSCoder){
        myStation=RadioStation()
        myStation.frequency=125.5
        myStation.name="Knix"
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonClick(sender: AnyObject) {
        stationName.text = myStation.name
        stationFrequency.text = String(format: "%f", myStation.frequency)
        
        if myStation.frequency>=RadioStation.minFMFrequency() && myStation.frequency <= RadioStation.maxFMFrequency(){
            stationBand.text = "FM"
        }else{
            stationBand.text = "AM"
        }
        
    }

}

