//
//  SecondViewController.swift
//  passingData
//
//  Created by MANBEER KAUR on 2020-03-04.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
     var name: String?
    override func viewDidLoad() {
         
        super.viewDidLoad()
             //
            if let nm = name
            {
                self.lblWelcome.text = "welcome,\(nm)"
                self.navigationItem.title = "Welcome,\(nm)"
            }else
            {
            self.lblWelcome.text = "NO name sent from First VC"
            }
            }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


