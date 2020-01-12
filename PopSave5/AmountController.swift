//
//  AmountController.swift
//  PopSave5
//
//  Created by Lilit Mesropyan on 2020-01-11.
//  Copyright © 2020 Lilit Mesropyan. All rights reserved.
//

import Foundation
import UIKit

public var Amount = ""

class AmountController:
    
    UIViewController {
    @IBAction func EnterButton(_ sender: Any) {
        Amount = AmountEntered.text ?? "1"
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ConfirmController")
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: true, completion: nil)
    }
    @IBOutlet weak var AmountEntered: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
