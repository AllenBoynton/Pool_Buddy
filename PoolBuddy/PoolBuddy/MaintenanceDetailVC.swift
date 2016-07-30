//
//  MaintenanceDetailVC.swift
//  PoolBuddy
//
//  Created by Allen Boynton on 7/26/16.
//  Copyright © 2016 Full Sail. All rights reserved.
//

import UIKit

class MaintenanceDetailVC: UIViewController {
    
    // Outlets for the text view & image of problem pool
    @IBOutlet weak var detailImage: UIImageView!    
    @IBOutlet weak var detailText: UITextView!
    
    var detailTitle: String = ""
    var productImage: UIImage!
    var descriptions: String = ""
    
    var strings:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Using passed data to add to detail view
        navigationItem.title = detailTitle
        detailImage.image = productImage
        detailText.text = descriptions
                        
        detailImage.layer.cornerRadius = 4
        detailImage.layer.borderWidth = 2
        detailImage.layer.borderColor = UIColor.blackColor().CGColor
        
        navigationController!.navigationBar.titleTextAttributes =
            ([NSFontAttributeName: UIFont(name: "KittenSlant", size: 22)!])
    }
}
