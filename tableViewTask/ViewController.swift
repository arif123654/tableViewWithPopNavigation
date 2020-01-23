//
//  ViewController.swift
//  tableViewTask
//
//  Created by apple on 1/23/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
  
    @IBOutlet weak var listTableView: UITableView!
    
    var imgName = ["Buns","Burger","Candy","Cerial","Donuts"]
    var clientName = ["Smith","Julia","Anderson","Alina","Moonroe"]
    var clientAge = ["25","35","42","36","45"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTableView.dequeueReusableCell(withIdentifier: "cell") as! ListTableViewCell
        cell.foodImageView.image = UIImage(named: imgName[indexPath.row])
        cell.clientNameLabel.text = clientName[indexPath.row]
        cell.clientAgeLabel.text = clientAge[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let vc1 = storyboard?.instantiateViewController(identifier: "DescViewController") as! DescViewController
              
            
               //vc1.OImages = UIImage(named: imgName[indexPath.row])
        vc1.name = clientName[indexPath.row]
        vc1.age = clientAge[indexPath.row]
        vc1.images = UIImage(named: imgName[indexPath.row])
               
               self.navigationController?.pushViewController(vc1, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

