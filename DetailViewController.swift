//
//  DetailViewController.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/14/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var realRealNavBarTitle: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //PUT PRODUCTS HERE
    
    var parts : String!
    var gPUPartsList: [GraphicsCardGPU!] = [
    GraphicsCardGPU(type: "Graphics Proccessing Unit", brand: "NVDIA", graphicsRamSize: "12 GB", baseClock: "1127MHz", boostClock: "1216MHz", memoryClock: "7010MHz", memoryBusWidth: "384-Bit", name: "GTX TITAN X", hidden: Bool, rating: 5.0, price: 1039.99, partDescription: ""),
        GraphicsCardGPU(type: "Graphics Proccessing Unit", brand: "AMD", graphicsRamSize: "8 GB", baseClock: "1050MHZ", boostClock: "1050MHZ", memoryClock: "6100MHz", memoryBusWidth: "512-Bit", name: "R9 390X", hidden: Bool, rating: 5.0, price: Double, partDescription: String)
    
    
    ]
    var cPUPartsList: [ProcessorCPU] = [
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket AM1", processorCount: 2, cpuSpeed: "1.45 GHZ", ramsupported: "MAX 16GB DDR3", name: "AMD Sempron 2650",  hidden: Bool(), rating: 4.5, price: 24.98, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket FM2", processorCount: 2, cpuSpeed: "3.9 GHZ", ramsupported: "DDR3", name: "AMD A6-6400K",  hidden: Bool(), rating: 4.5, price: 47.99 , partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket FM2", processorCount: 2, cpuSpeed: "3.7 GHZ", ramsupported: "DDR3", name: "AMD A4-6300",  hidden: Bool(), rating: 4.5, price: 34.95, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 2, cpuSpeed: "3.0 GHZ", ramsupported: "DDR3", name: "intel G3220",  hidden: Bool(), rating: 4.5, price: 56.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket FM2+", processorCount: 4, cpuSpeed: "3.7 GHz", ramsupported: "DDR3", name: "AMD Athlon X4 860K",  hidden: Bool(), rating: 4.0, price: 69.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket AM3+", processorCount: 6, cpuSpeed: "3.5 GHZ", ramsupported: "DDR3", name: "AMD FX-6300 ",  hidden: Bool(), rating: 5, price: 104.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket FM3+", processorCount: 6, cpuSpeed: "3.9 GHZ", ramsupported: "DDR3", name: "AMD FX 6350",  hidden: Bool(), rating: 5, price: 125.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "LGA 1150", processorCount: 2, cpuSpeed: "3.6 GHZ", ramsupported: "DDR3", name: "i3 4160",  hidden: Bool(), rating: 5, price: 119.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "AMD", socket: "Socket FM3+", processorCount: 8, cpuSpeed: "3.5 GHZ", ramsupported: "DDR3", name: "AMD FX-8320",  hidden: Bool(), rating: 5, price: 139.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 4, cpuSpeed: "3.2 GHZ", ramsupported: "DDR3", name: "i5-4460",  hidden: Bool(), rating: 5, price: 189.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 4, cpuSpeed: "3.3 GHZ", ramsupported: "DDR3", name: "i5-4590",  hidden: Bool(), rating: 5, price: 199.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 4, cpuSpeed: "3.5 GHZ", ramsupported: "DDR3", name: "i5-4690",  hidden: Bool(), rating: 5, price: 224.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 4, cpuSpeed: "3.5 GHZ", ramsupported: "DDR3", name: "i5-4690K",  hidden: Bool(), rating: 5, price: 239.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 1150", processorCount: 4, cpuSpeed: "4.0 GHZ", ramsupported: "DDR3", name: "i7-4790K",  hidden: Bool(), rating: 5, price: 339.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 2011-3", processorCount: 6, cpuSpeed: "3.3 GHZ", ramsupported: "DDR4", name: "INTEL I7-5920K",  hidden: Bool(), rating: 5, price: 389.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 2011-3", processorCount: 6, cpuSpeed: "3.5 GHZ", ramsupported: "DDR4", name: "INTEL I7-5930K",  hidden: Bool(), rating: 5, price: 579.99, partDescription: ""),
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 2011-3", processorCount: 8, cpuSpeed: "3.0 GHZ", ramsupported: "DDR4", name: "INTEL I7-5960X",  hidden: Bool(), rating: 5, price: 1049.99, partDescription: "")]
    var hSFPartsList: [HeatsinkHSF!] = [
        HeatsinkHSF(type: "Heatsink Fan", name: "STOCK", brand: "INTEL", compatibility: "Intel CPUs" , hidden: Bool, rating: 3.0, price: 0.0, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "STOCK", brand: "AMD", compatibility: "Amd CPUs", hidden: Bool, rating: 3.0, price: 0.0, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "212 Evo", brand: "Cooler master", compatibility:"CPU Socket:Intel Socket LGA 1150/2011/1366/1155/1150,AMD Socket FM1/FM2/AM3+", hidden: Bool, rating: 4.5, price: 34.99, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "Cryorig H5", brand: "Cryorig", compatibility:"Intel LGA & AMD Socket", hidden: Bool, rating: 4.0, price: 46.99, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "NH-U12S", brand: "Noctua", compatibility:"Intel Socket LGA 2011, LGA1156,1155, 1150 & AMD AM2/AM2+/AM3/3+, FM1/2 (stock backplate required)", hidden: Bool, rating: 5.0, price: 66.60, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "NH-U14S", brand: "Noctua", compatibility:"Intel Socket LGA 2011, LGA1156,1155, 1150 & AMD AM2/AM2+/AM3/3+, FM1/2 (stock backplate required)", hidden: Bool, rating: 5.0, price: 69.99, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "TC14PE", brand: "Phanteks", compatibility:"Intel Socket: LGA 1150 / LGA 2011 / LGA 1155 / LGA 1156 / LGA 1366 / LGA775,AMD Socket: FM1/AM3+/AM3/AM2+/AM2 (stock backplate required)", hidden: Bool, rating: 5.0, price: 74.99, partDescription: ""),
        HeatsinkHSF(type: "Heatsink Fan", name: "NH-D15", brand: "Noctua", compatibility:"Intel LGA2011 (Square ILM), LGA115x (LGA1156,LGA1155, LGA1150) & AMD (AM2, AM2+, AM3,AM3+, FM1, FM2, FM2+, backplate required)", hidden: Bool, rating: 5.0, price: 94.89, partDescription: "")]
    var mBPartsList: [MotherBoard!] = [
    MotherBoard(type: "Motherboard", name: "MSI X99-A XPOWER", brand: "MSI", socket:"2011-3", hidden: Bool, rating: 5.0, price: 300, partDescription: "")
    ]
    var rAMPartsList: [RAM!] = [
        RAM(type: "Random Access Memory", name: "Kingston 2 GB", brand: "Kingston", speed: 1600, technology: "DDR3", numberofsticks: 1, memoryStorageCapacity: "2 GB", hidden: Bool(), rating: 4.0, price: 13.99, partDescription: ""),
        RAM(type: "Random Access Memory", name: "PNY XLR8 4 GB", brand: "PNY", speed: 1600, technology: "DDR3", numberofsticks: 1, memoryStorageCapacity: "4 GB", hidden: Bool(), rating: 4.5, price: 24.99, partDescription: ""),
        RAM(type: "Random Access Memory", name: "CORSAIR VENGENCE8 GB", brand: "Corsair", speed: 1600, technology: "DDR3", numberofsticks: 2, memoryStorageCapacity: "8 GB", hidden: Bool(), rating: 5.0, price: 47.99, partDescription: ""),
        RAM(type: "Random Access Memory", name: "CORSAIR PRO 16 GB", brand: "Corsair", speed: 1600, technology: "DDR3", numberofsticks: 2, memoryStorageCapacity: "16 GB", hidden: Bool(), rating: 5.0, price: 86.99, partDescription: ""),
        RAM(type: "Random Access Memory", name: "CORSAIR Vengeance LPX 16 GB DDR4", brand: "corsair", speed: 2133, technology: "DDR4", numberofsticks: 2, memoryStorageCapacity: "16 GB", hidden: Bool(), rating: 5.0, price: 139.99, partDescription: ""),
        RAM(type: "Random Access Memory", name: "G.SKILL Ripjaws 4 series 32 GB DDR4", brand: "G.SKILL", speed: 2400, technology: "DDR4", numberofsticks: 4, memoryStorageCapacity: "32 GB", hidden: Bool(), rating: 5.0, price: 244.99, partDescription: "")
    ]
    var hDDPartsList: [HDD!] = [
        HDD(type: "Hard Drive-Disk", name: "Western Digital Blue 1TB 7200 RPM", brand: "WD", capacity: "1 TB", hidden: Bool(), rating: 4.0, price: 52.99, partDescription: ""),
        HDD(type: "Hard Drive-Disk", name: "Western Digital WD Green 2TB", brand: "WD", capacity: "2 TB", hidden: Bool(), rating: 5.0, price: 72.99, partDescription: ""),
        HDD(type: "Hard Drive-Disk", name: "Western Digital WD Green 3TB" , brand: "WD", capacity: "4 TB", hidden: Bool(), rating: 5.0, price: 135.99, partDescription: "")]
    var sSDPartsList: [SSD!] = [
    SSD(type: "Solid State Drive", name: "Mushkin Enhanced ECO2 120GB", brand: "Mushkin", capacity: "120 GB", hidden: Bool, rating: 4.0, price: 52.99, partDescription: String),
    SSD(type: "Solid State Drive", name: "SANDISK ULTRA II 120GB GB SSD", brand: "SANDISK", capacity: "120 GB", hidden: Bool, rating: 5.0, price: 69.25, partDescription: String),
    SSD(type: "Solid State Drive", name: "HYPER X SAVAGE 240 GB SSD", brand: "KISNGSTON", capacity: "240 GB", hidden: Bool, rating: 4.5, price: 102.99, partDescription: String),
    SSD(type: "Solid State Drive", name: "SanDisk SSD PLUS 240g GB", brand: "SANDISK", capacity: "240 GB", hidden: Bool, rating: 4.0, price: 96.50, partDescription: ""),
    SSD(type: "Solid State Drive", name: "SANDISK ULTRA II 480 GB SSD", brand: "SANDISK", capacity: "500 GB", hidden: Bool, rating: 5.0, price: 199.99, partDescription: String),
    SSD(type: "Solid State Drive", name: "SAMSUNG 512 GB SSD PRO", brand: "SAMSUNG", capacity: "512 GB", hidden: Bool, rating: 5.0, price: 257.99, partDescription: String),
    SSD(type: "Solid State Drive", name: "SANDISK EXTREME PRO 960 GB SSD", brand: "Sandisk", capacity: "960 GB", hidden: Bool, rating: 5.0, price: 429.99, partDescription: String)
    ]
    var pSUPartsList: [PowerSupply!] = [
   PowerSupply(type: "PowerSupply", name: "seasonic platinum 1200w", brand: seasonic, Efficiency: "80+ platinum", power: "1200w", hidden: Bool, rating:h 5.0, price: 150, partDescription: "")
    
    ]
    var casePartsList: [Case!] = [
        Case(type: "Case1", name: "NZXT Source 210", brand: "NZXT", numberoffans: "Cooling System:Front, 2 x 120mm (optional)/Rear, 1 x 120mm @ 1200rpm (included)/Top, 1 x 140mm (optional)/Bottom, 1 x 120mm (optional)", compatibility: "MiCRO ATX/ATX", hidden: Bool, rating: 5.0, price: 39.99, partDescription: ""),
        
        Case(type: "Case1", name: "Antec GS One", brand: "Antec", numberoffans:"1 x 120mm Top Fan/1 x 120mm Rear Fan", compatibility: "Micro ATX/ATX/ITX", hidden: Bool, rating: 5.0, price: 49.99, partDescription: ""),
        
        Case(type: "Case1", name: "Rosewill Challenger", brand: "Rosewill", numberoffans: "Advanced Cooling System :-Front 1x 120mm Blue LED Fan (pre-installed)-Rear 1x 120mm Fan (pre-installed)-Top 1x 120/140mm Fan (140mm pre-installed)-Side 2x 120mm Fan (Option)"
, compatibility: "Micro ATX/ATX", hidden: Bool, rating: 5.0, price: 49.99, partDescription: ""),
        
       
    ]
    var correctList: [AnyObject] = []
    
    //Here comes all of the products
    //gPUPartsList = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = self.view.frame.height * 2
        
        switch parts{
        case "Graphics Proccessing Unit" :
            self.correctList = gPUPartsList
        case "Central Proccessing Unit" :
            self.correctList = cPUPartsList
        case "Heatsink/Fan" :
            self.correctList = hSFPartsList
        case "Motherboard" :
            self.correctList = mBPartsList
        case "Random Access Memory" :
            self.correctList = rAMPartsList
        case "HDD" :
            self.correctList = hDDPartsList
        case "SSD" :
            self.correctList = sSDPartsList
        case "Power Supply" :
            self.correctList = pSUPartsList
        case "Case" :
            self.correctList = casePartsList
        default :
            print("error incorrect list")
        }
        
        
        print(parts)
        realRealNavBarTitle.text = parts
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return correctList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath) as UITableViewCell
        let part = correctList[indexPath.row] as! String
        
        cell.textLabel?.text = part
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            correctList.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
