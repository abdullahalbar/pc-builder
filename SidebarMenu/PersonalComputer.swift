//
//  PersonalComputer.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/13/15.
//  Copyright © 2015 . All rights reserved.
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
    
    convenience init(name: String){
        self.init()
        self.name = name
    }

}

class ProcessorCPU: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class HeatsinkHSF: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class MotherBoard: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class RAM: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class HDD: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class SDD: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class PowerSupply: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}

class Case: PersonalComputer{
    
    var name = ""
    var brand = ""
    var hidden = true
    var rating = 0.0
    var price = 0.0
    var partDescription = ""
    
    convenience init(name: String){
        self.init()
        self.name = name
    }
    
}















