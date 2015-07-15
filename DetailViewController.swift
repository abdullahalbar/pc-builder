//
//  DetailViewController.swift
//  SidebarMenu
//
//  Created by Christopher Geleske on 7/14/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var navBarTitle: UINavigationBar!
    @IBOutlet weak var realNavBarTitle: UINavigationItem!
    @IBOutlet weak var realRealNavBarTitle: UILabel!
    
    var parts : String!
    var gPUPartsList: GraphicsCardGPU!
    var cPUPartsList: ProcessorCPU!
    var hSFPartsList: HeatsinkHSF!
    var mBPartsList: MotherBoard!
    var rAMPartsList: RAM!
    var hDDPartsList: HDD!
    var sSDPartsList: SSD!
    var pSUPartsList: PowerSupply!
    var casePartsList: Case!
    
    //Here comes all of the products
    //PUT PRODUCTS HERE
    gPUPartsList = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(parts)
        realRealNavBarTitle.text = parts
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parts.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch parts{
        case: "Graphics Proccessing Unit" {
            
            }
            
        }
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        let part = parts[indexPath.row] as String
        
        cell.textLabel?.text = part
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            parts.removeAtIndex(indexPath.row)
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
