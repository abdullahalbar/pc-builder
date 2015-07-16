//
//  PartsTableViewController.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/15/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class PartsTableViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextLabel.text = product2.name
        brandTextLabel.text = product2.type
        socketLabel.text = product2.socket
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
