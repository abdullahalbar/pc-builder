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
    @IBOutlet weak var typeLable: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var switchController = 0

    //PUT PRODUCTS HERE
    
    var parts : String!
    var gPUPartsList: [GraphicsCardGPU!] = []
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
        ProcessorCPU(type: "Core Proccessing Unit", brand: "INTEL", socket: "LGA 2011-3", processorCount: 8, cpuSpeed: "3.0 GHZ", ramsupported: "DDR4", name: "INTEL I7-5960X",  hidden: Bool(), rating: 5, price: 1049.99, partDescription: "")
    ]
    var hSFPartsList: [HeatsinkHSF!] = []
    var mBPartsList: [MotherBoard!] = []
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
    var sSDPartsList: [SSD!] = []
    var pSUPartsList: [PowerSupply!] = []
    var casePartsList: [Case!] = []
    var correctList: [AnyObject] = []
    
    //Here comes all of the products
    //gPUPartsList = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = self.view.frame.height * 3
        
        switch parts{
        case "Graphics Proccessing Unit" :
            self.correctList = gPUPartsList
            switchController = 1
        case "Central Proccessing Unit" :
            self.correctList = cPUPartsList
            switchController = 2
        case "Heatsink/Fan" :
            self.correctList = hSFPartsList
            switchController = 3
        case "Motherboard" :
            self.correctList = mBPartsList
            switchController = 4
        case "Random Access Memory" :
            self.correctList = rAMPartsList
            switchController = 5
        case "HDD" :
            self.correctList = hDDPartsList
            switchController = 6
        case "SSD" :
            self.correctList = sSDPartsList
            switchController = 7
        case "Power Supply" :
            self.correctList = pSUPartsList
            switchController = 8
        case "Case" :
            self.correctList = casePartsList
            switchController = 9
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
        let part = correctList[indexPath.row].name
        
        cell.textLabel?.text = part
        return cell
        
        }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            correctList.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let dvc = segue.destinationViewController as! PartsTableViewController
        let index = tableView.indexPathForSelectedRow?.row
        switch switchController {
        case 1:
            dvc.product1 = correctList[index!] as! GraphicsCardGPU
        case 2:
            dvc.product2 = correctList[index!] as! ProcessorCPU
        case 3:
            dvc.product3 = correctList[index!] as! HeatsinkHSF
        case 4:
            dvc.product4 = correctList[index!] as! MotherBoard
        case 5:
            dvc.product5 = correctList[index!] as! RAM
        case 6:
            dvc.product6 = correctList[index!] as! HDD
        case 7:
            dvc.product7 = correctList[index!] as! SSD
        case 8:
            dvc.product8 = correctList[index!] as! PowerSupply
        case 9:
            dvc.product9 = correctList[index!] as! Case
        default:
            print("error")
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
