//
//  InstructionsVC.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Atharva Vaidya on 2016-02-13.
//  Copyright © 2016 Parse. All rights reserved.
//

import Foundation
import UIKit

class IntsructionsVC: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        
        let image = UIImage(named: "LifenestLogo")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.opaque = true
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image!
        
        print(imageView)
        
        self.navigationItem.titleView = imageView
        self.navigationItem.backBarButtonItem?.title = nil
    }
}