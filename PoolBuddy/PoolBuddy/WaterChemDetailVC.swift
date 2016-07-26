//
//  WaterChemDetailVC.swift
//  PoolBuddy
//
//  Created by Allen Boynton on 7/4/16.
//  Copyright © 2016 Full Sail. All rights reserved.
//

import UIKit

class WaterChemDetailVC: UIViewController {

    @IBOutlet weak var waterChemImage: UIImageView!    
    @IBOutlet weak var waterChemText: UITextView!
    
    
    var detailTitle: String = ""
    var productImage: UIImage!
    var descriptions: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Using passed data to add to detail view
        navigationItem.title = detailTitle
        waterChemImage.image = productImage
        waterChemText.text = descriptions
        
        navigationController!.navigationBar.titleTextAttributes =
            ([NSFontAttributeName: UIFont(name: "KittenSlant", size: 22)!])
    }
}
