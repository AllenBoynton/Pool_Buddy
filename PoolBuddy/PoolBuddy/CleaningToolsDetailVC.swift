//
//  CleaningToolsDetailVC.swift
//  PoolBuddy
//
//  Created by Allen Boynton on 7/4/16.
//  Copyright © 2016 Full Sail. All rights reserved.
//

import UIKit

class CleaningToolsDetailVC: UIViewController {
    
    // Outlets for the text view & image of problem pool
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var detailImage2: UIImageView!
    @IBOutlet weak var detailLabel2: UILabel!
    
    var label: String!
    var image: UIImage!
    var label2: String!
    var image2: UIImage!
    var descriptions: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Using passed data to add to detail view
        navigationItem.title = label
        detailImage.image = image
        detailText.text = descriptions
        detailLabel2.text = label2
        detailImage2.image = image2
        
        detailText.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 18)
    }
}
