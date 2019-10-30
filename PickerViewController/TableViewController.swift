//
//  TableViewController.swift
//  PickerViewController
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var tbl: UITableView!
    
     let countries = ["India", " Canada" , " Usa", " Russia", "Srilanka" , " Pakistan", "China","Mexico"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbl.dataSource = self
        tbl.delegate = self
}
    
    func numberOfSection(in tableview: UITableView, numberOfrowsInSection section: Int) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return countries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = countries[indexPath.row]
        cell.detailTextLabel?.text = "Sample Detailed Text"
        //        cell.imageView?.image = imageArray
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didselectRowAt indexPath: IndexPath)
//    {
//        print(countries[indexPath.row])
//        
//    }

}
