//
//  GardenController.swift
//  PopSave5
//
//  Created by Lilit Mesropyan on 2020-01-12.
//  Copyright © 2020 Lilit Mesropyan. All rights reserved.
//

import Foundation
import UIKit
var scrollView2: UIScrollView!
var imageView2: UIImageView!

class GardenController: UIViewController {
    
    @IBAction func backButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "HomeController")
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: true, completion: nil)
    }
    
    
override func viewDidLoad() {
        super.viewDidLoad()
    imageView2 = UIImageView(image: UIImage(named: "Garden.png"))
        
    scrollView2 = UIScrollView(frame: view.bounds)
    scrollView2.backgroundColor = UIColor.black
    scrollView2.contentSize = imageView2.bounds.size
    //scrollView2.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
        scrollView2.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue)
    scrollView2.addSubview(imageView2)
    view.addSubview(scrollView2)
    }


}
