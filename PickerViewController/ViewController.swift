//
//  ViewController.swift
//  PickerViewController
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var pickerCurrency: UILabel!
    @IBOutlet weak var pickerCountries: UIPickerView!
let countries = ["India", "Canada", "Usa", "Mexico", "Pakistan", "Hoolland", "Russia"]
let currency = ["Inr", "CAD", "USD","MEX", "PAK", "HOO","RUSS"]
//    var imageArray: [UIImage] = [UIImage(named:"ind")!,UIImage(named:"can")!,UIImage(named:"usa")!,UIImage(named:"mex")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerCountries.delegate = self
        self.pickerCountries.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return self.countries.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
//    {
////        print("Title")
//        return self.countries[row]
//    }
    
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//    {
//        print(self.countries[row])
////        return self.countries[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0
        {
            return self.countries[row]
        }
        return self.currency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let row1 = pickerCountries.selectedRow(inComponent: 0)
        let row2 = pickerCountries.selectedRow(inComponent: 1)
        let v1 = self.countries[row1]
        let v2 = self.countries[row2]
        
       pickerCurrency.text = "\(v1) - \(v2)"
    }
    
//func pickerView(_pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
// {
//    if component == 0
//    {
//        return UIImageView(image: self.imageArray[row])
//    }
//
//    let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width , height: <#T##CGFloat#>))
//    let myView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//
//    let mImageyView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//
//    let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 60))
    
    }




