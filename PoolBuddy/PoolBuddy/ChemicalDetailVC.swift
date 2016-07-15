//
//  ChemicalDetailVC.swift
//  PoolBuddy
//
//  Created by Allen Boynton on 7/4/16.
//  Copyright © 2016 Full Sail. All rights reserved.
//

import UIKit

class ChemicalDetailVC: UIViewController {

    @IBOutlet weak var chemicalImage: UIImageView!    
    @IBOutlet weak var chemicalText: UITextView!
    
    @IBOutlet weak var sideImage1: UIImageView!
    @IBOutlet weak var sideImage2: UIImageView!
    
    var detailTitle: String = ""
    var productImage: UIImage!
    var descriptions: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Using passed data to add to detail view
        navigationItem.title = detailTitle
        chemicalImage.image = productImage
        chemicalText.text = descriptions
    }    
}
