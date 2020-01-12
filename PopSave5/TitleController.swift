//
//  TitleController.swift
//  PopSave5
//
//  Created by Lilit Mesropyan on 2020-01-12.
//  Copyright © 2020 Lilit Mesropyan. All rights reserved.
//

import Foundation
import UIKit

class TitleController: UIViewController {
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "HomeController")
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: true, completion: nil)
    }
    
    
override func viewDidLoad() {
        super.viewDidLoad()
    }


}
