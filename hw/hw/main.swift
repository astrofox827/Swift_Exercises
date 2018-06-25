//
//  main.swift
//  hw
//
//  Created by Eugenia Lo on 2015/4/9.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import Foundation

class Author{
    var name = "Mary"
    var lastName = "Smith"
    var yearBorn = "1982"
    var gender = "Female"
    var telephone = "0987485947"
}

class comicBook{
    var title = "Super Diaper Baby"
    var author = "Dav Pilkey"
}

let someAuthor = Author();

println("The author was born in " + someAuthor.yearBorn + ".")