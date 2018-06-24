//
//  main.swift
//  pr1
//
//  Created by Eugenia Lo on 2015/4/9.
//  Copyright (c) 2015年 Eugenia Lo. All rights reserved.
//

import Foundation

/*
class HelloWorld{
    
    func logMessage(){
        let hello = "hello world!"
        println(hello)
    }
}

let myHelloWorld = HelloWorld();
myHelloWorld.logMessage()
*/

/*
class shoppingListItem{
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = shoppingListItem()
item.name = "assign a string";

println(item.name)
println(item.purchased)
println(item.quantity)
*/

/*
class Vehicle{
    var numberOfWheels = 0
    var description: String{
        return "\(numberOfWheels) Wheel(s)"
    }
}

let vehicle = Vehicle();
println("Vehicle \(vehicle.description)")
*/

/*
class InfoEugenia37{
    var hobby:String{
        return "sleeping"
    }
    var age = "19"
    var school = "TNUA"
}

let info = InfoEugenia37()
println(info.age)
println(info.hobby)
println(info.school)
*/

class InfoEugenia37{
    var hobby:String{
        return "sleeping"
    }
    var age = "19"
    var school = "TNUA"
    
    func Hobby(){
        println(hobby)
    }
    func Age(){
        println(age)
    }
    func School(){
        println(school)
    }
}

let Info2 = InfoEugenia37()
Info2.School();
Info2.Hobby();
Info2.Age();
