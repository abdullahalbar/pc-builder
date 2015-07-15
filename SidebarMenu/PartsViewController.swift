//
//  pc.swift
//  SidebarMenu
//
//  Created by abdullah albar on 7/13/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class PartsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    var parts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parts = ["Graphics Proccessing Unit", "Central Proccessing Unit", "Heatsink/Fan", "Motherboard", "Random Access Memory", "HDD", "SSD", "Power Supply", "Case"]
        self.tableView.reloadData()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        let part = parts[indexPath.row] as String
        
        //print([parts])
        
        //var partsArray = [[Any]]()
        //partsArray[0] = [GraphicsCardGPU]()
        
        cell.textLabel?.text = part
        return cell
    }
    
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        //if editingStyle == UITableViewCellEditingStyle.Delete {
//            //parts.removeAtIndex(indexPath.row)
//          //  tableView.reloadData()
//        //}
//    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      
            let dvc = segue.destinationViewController as! DetailViewController
            let index = tableView.indexPathForSelectedRow?.row
            dvc.parts = parts[index!]
        }
    
}
