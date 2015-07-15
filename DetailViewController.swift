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
    var gPUPartsList: [GraphicsCardGPU!] = []
    var cPUPartsList: [ProcessorCPU!] = []
    var hSFPartsList: [HeatsinkHSF!] = []
    var mBPartsList: [MotherBoard!] = []
    var rAMPartsList: [RAM!] = []
    var hDDPartsList: [HDD!] = []
    var sSDPartsList: [SSD!] = []
    var pSUPartsList: [PowerSupply!] = []
    var casePartsList: [Case!] = []
    var correctList: [Any] = []
    
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
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
