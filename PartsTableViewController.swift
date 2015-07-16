//
//  PartsTableViewController.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/15/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class PartsTableViewController2: UIViewController {

    var product1 = GraphicsCardGPU()
    var product2 = ProcessorCPU()
    var product3 = HeatsinkHSF()
    var product4 = MotherBoard()
    var product5 = RAM()
    var product6 = HDD()
    var product7 = SSD()
    var product8 = PowerSupply()
    var product9 = Case()
    

    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var brandTextLabel: UILabel!
    @IBOutlet weak var socketLabel: UILabel!
    @IBOutlet weak var processorCountLabel: UILabel!
    @IBOutlet weak var ramSupportedLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextLabel.text = product2.name
        brandTextLabel.text = product2.brand
        socketLabel.text = product2.socket
        processorCountLabel.text = "\(product2.processorCount)"
        ramSupportedLabel.text = product2.ramsupported
        ratingLabel.text = "\(product2.rating)"
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class PartsTableViewController1: UIViewController {
    
    var product1 = GraphicsCardGPU()
        
    
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var brandTextLabel: UILabel!
    @IBOutlet weak var graphicRAMSizeLabel: UILabel!
    @IBOutlet weak var baseClockLabel: UILabel!
    @IBOutlet weak var boostClockLabel: UILabel!
    @IBOutlet weak var memoryClockLabel: UILabel!
    @IBOutlet weak var ratingLabelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextLabel.text = product1.name
        brandTextLabel.text = product1.brand
       // socketLabel.text = product1.socket
       // processorCountLabel.text = "\(product1.processorCount)"
       // ramSupportedLabel.text = product1.ramsupported
       // ratingLabel.text = "\(product1.rating)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
