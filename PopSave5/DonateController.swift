//
//  DonateController.swift
//  PopSave5
//
//  Created by Lilit Mesropyan on 2020-01-11.
//  Copyright © 2020 Lilit Mesropyan. All rights reserved.
//

import Foundation
import UIKit

var scrollView: UIScrollView!
var imageView: UIImageView!

class DonateController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    imageView = UIImageView(image: UIImage(named: "charities.png"))
        
    scrollView = UIScrollView(frame: view.bounds)
    scrollView.backgroundColor = UIColor.black
    scrollView.contentSize = imageView.bounds.size
    //scrollView2.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
        scrollView.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue)
    scrollView.addSubview(imageView)
    view.addSubview(scrollView)
    }
}
