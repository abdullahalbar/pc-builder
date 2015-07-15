//
//  PersonalComputer.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/13/15.
//  Copyright © 2015 . All rights reserved.
//

import UIKit

class PCParts: NSObject {

    var totalPrice = 0.0
    var quality = ""
    var name = ""
    
    
    
}

class GraphicsCardGPU: PCParts{
    
    var type = "Graphics Proccessing Unit"
    var brand = ""
    var graphicsRamSize = ""
    var baseClock = ""
    var boostClock = ""
    var memoryClock = ""
    var memoryBusWidth = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, brand: String, graphicsRamSize: String, baseClock: String, boostClock: String, memoryClock: String, memoryBusWidth: String, name: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }

}

class ProcessorCPU: PCParts{
    
    var type = "Core Proccessing Unit"
    var brand = ""
    var socket = ""
    var processorCount = 0
    var cpuSpeed = ""
    var ramsupported = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, brand: String, socket: String, processorCount: Int, cpuSpeed: String, ramsupported: String, name: String,  hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class HeatsinkHSF: PCParts{
    
    var type = "Heatsink Fan"
    var brand = ""
    var compatibility = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, compatibility:String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
 // HeatsinfHSF (type: "Heatsink Fan", name: , brand: "whatever,
}

class MotherBoard: PCParts{
    
    var type = "Motherboard"
    
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class RAM: PCParts{
    
    var type = "Random Access Memory"
    var brand = ""
    var speed = 0
    var technology = ""
    var numberofsticks = 0
    var memoryStorageCapacity = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, speed: Int, technology: String, numberofsticks: Int, memoryStorageCapacity: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.speed = speed
        self.technology = technology
        self.numberofsticks = numberofsticks
        self.memoryStorageCapacity = memoryStorageCapacity
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class HDD: PCParts{
    
    var type = "Hard Drive-Disk"
    var brand = ""
    var capacity = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, capacity: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class SSD: PCParts{
    
    var type = "Solid State Drive"
    var brand = ""
    var capacity = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, capacity: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class PowerSupply: PCParts{
    
    var type = "PowerSupply"
    var brand = ""
    var power = ""
    var Efficiency = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, Efficiency: String, power: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class Case: PCParts{
    
    
    
    var brand = ""
    var numberoffans = ""
    var compatibility = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(type: String, name: String, brand: String, numberoffans: String, compatibility: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}















