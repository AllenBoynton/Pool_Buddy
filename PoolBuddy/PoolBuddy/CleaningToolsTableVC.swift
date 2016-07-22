//
//  CleaningToolsTableVC.swift
//  PoolBuddy
//
//  Created by Allen Boynton on 7/4/16.
//  Copyright © 2016 Full Sail. All rights reserved.
//

import UIKit

class CleaningToolsTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Data Source
    
    // Gives us access to the pool product inventory info listed in PoolCategory
    lazy var maintenanceEquipment: [PoolCategory] = {
        return PoolCategory.maintenanceEquipment()
    }()

    //
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        self.revealViewController().rearViewRevealWidth = 325
        
        navigationItem.title = "Cleaning Tools"
    }

    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let poolCategory = maintenanceEquipment[section]
        return poolCategory.category
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return maintenanceEquipment.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let poolCategory = maintenanceEquipment[section]
        return poolCategory.products.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cleaningTools, forIndexPath: indexPath) as! CleaningToolsTableViewCell
        
        let poolCategory = maintenanceEquipment[indexPath.section]
        let product = poolCategory.products[indexPath.row]
        
        cell.toolsImage.image = UIImage(named: product.image)
        cell.toolsLabel.text = product.label
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // Passing data
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Accessing segue by calling the segue identifier
        if segue.identifier == toolSegue {
            let destination = segue.destinationViewController as! CleaningToolsDetailVC
            if let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell) {
                
                let poolCategory = maintenanceEquipment[indexPath.section]
                let product = poolCategory.products[indexPath.row]
                
                destination.productImage = UIImage(named: product.image)
                destination.detailTitle = product.label
                destination.descriptions = product.description
            }
        }
    }
}