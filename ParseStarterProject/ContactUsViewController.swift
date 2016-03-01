//
//  ContactUsViewController.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Atharva Vaidya on 2016-02-13.
//  Copyright © 2016 Parse. All rights reserved.
//

import Foundation
import UIKit

class ContactUsViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let c = Colors()
        c.gl.frame = self.view.frame
        self.view.layer.insertSublayer(c.gl, atIndex: 0)
        
        self.navigationController?.navigationBarHidden = false
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = false
    }
}