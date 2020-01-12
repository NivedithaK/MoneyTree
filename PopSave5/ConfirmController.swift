//
//  ConfirmController.swift
//  PopSave5
//
//  Created by Lilit Mesropyan on 2020-01-11.
//  Copyright © 2020 Lilit Mesropyan. All rights reserved.
//

import Foundation
import UIKit

class ConfirmController: UIViewController {
    @IBAction func ConfirmYesButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "NoSaveController")
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var minsWorked: UILabel!
    
    @IBAction func ConfirmNoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SaveController")
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var int_amount = 0
        var int_salary = 0
        if let temp = Int(Amount){
            int_amount = temp
        } else {
            int_amount = 1
        }
        
        if let temp2 = Int(SalaryAmount){
            int_salary = temp2
        } else {
            int_salary = 1
        }
        
        print("Int amount: " + String(int_amount))
        print("Int salary: " + String(int_salary))
        
        var minsNeeded = (Float(int_amount) / Float(int_salary)) * 60
        
        print("minsNeeded: " + String(minsNeeded))
        minsWorked.text = String(minsNeeded)
        // Do any additional setup after loading the view.
    }


}
