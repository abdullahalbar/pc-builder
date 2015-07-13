//
//  PersonalComputer.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/13/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class PersonalComputer: NSObject {

    var totalPrice = 0.0
    var quality = ""
    
    
    
    
}

class GraphicsCardGPU: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }

}

class ProcessorCPU: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class HeatsinkHSF: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class MotherBoard: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class RAM: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class HDD: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class SDD: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class PowerSupply: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}

class Case: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String, brand: String, hidden: Bool, rating: Double, price: Double, partDescription: String){
        self.init()
        self.name = name
        self.brand = brand
        self.hidden = hidden
        self.rating = rating
        self.price = price
        self.partDescription = partDescription
    }
    
}















