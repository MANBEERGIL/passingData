//
//  ViewController.swift
//  passingData
//
//  Created by MANBEER KAUR on 2020-03-03.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.countryList.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(countryList[row])
    }
    
    

    @IBOutlet weak var enterName: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCountry.delegate  = self
        pickerCountry.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBAction func goNxtBtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC")as! SecondViewController
        if let name = self.textField.text {
            secondVC.name = name
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    @IBOutlet weak var pickerCountry: UIPickerView!
    var countryList = ["India","Canada","China","USA"]
    

}

