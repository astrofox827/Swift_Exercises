//
//  RadioStation.swift
//  12345
//
//  Created by Eugenia Lo on 2015/4/23.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import Foundation
//Import UIKit

class RadioStation{
    var name: String
    var frequency: Double
    init(){
        name="Default"
        frequency=100;
    }
    class func minAMFrequency() ->Double{
        return 520.0
    }
    class func maxAMFrequency() ->Double{
        return 1610.0
    }
    class func minFMFrequency() ->Double{
        return 88.3
    }
    class func maxFMFrequency() ->Double{
        return 107.9
    }
    
    func band() ->Int{
        if frequency >= RadioStation.minFMFrequency() && frequency <= RadioStation.maxFMFrequency(){
            return 1
        }else{
            return 0
        }
    }

}