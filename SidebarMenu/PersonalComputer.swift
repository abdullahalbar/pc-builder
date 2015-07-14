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

class ProcessorCPU: PCParts{
    
    var type = "Core Proccessing Unit"
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

class HeatsinkHSF: PCParts{
    
    var type = "Heatsink Fan"
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

class HDD: PCParts{
    
    var type = "Hard Drive-Disk"
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

class SSD: PCParts{
    
    var type = "Solid State Drive"
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

class PowerSupply: PCParts{
    
    var type = "PowerSupply"
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

class Case: PCParts{
    
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















