//
//  main.swift
//  C4_Practice
//
//  Created by Eugenia Lo on 2015/3/19.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import Foundation


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 37.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

println("The width of someResolution is \(someVideoMode.frameRate)")