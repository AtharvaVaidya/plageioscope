//
//  InitialViewController.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Anirudh Narayan on 11/1/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import Parse



class InitialViewController: UIViewController {

    @IBAction func logout(sender: AnyObject) {
        
        PFUser.logOut()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let presentStart: StartViewController =  StartViewController()
        self.presentViewController(presentStart, animated: true, completion: nil)
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let c = Colors()
        c.gl.frame = self.view.frame
        self.view.layer.insertSublayer(c.gl, atIndex: 0)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = true
    }
}
