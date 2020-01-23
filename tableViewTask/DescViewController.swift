//
//  DescViewController.swift
//  tableViewTask
//
//  Created by apple on 1/23/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class DescViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var homeButton: UIButton!
    
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    var name = ""
    var age = ""
    var images: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        homeButton.layer.cornerRadius = 7
        nameLabel.text = name
        ageLabel.text = age
        foodImageView.image = images
        
    }
    

    @IBAction func homeVCButton(_ sender: Any) {
        
//        let vc = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
//
//        self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
