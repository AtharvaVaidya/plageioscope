//
//  LegalViewController.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Atharva Vaidya on 2016-02-10.
//  Copyright © 2016 Parse. All rights reserved.
//

import UIKit

class LegalViewController: UIViewController
{
    
    @IBOutlet weak var lineView: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBarHidden = false
        
        let c = Colors()
        c.gl.frame = self.view.frame
        self.view.layer.insertSublayer(c.gl, atIndex: 0)
        
        let image = UIImage(named: "LifenestLogo")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.opaque = true
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image!
        
        print(imageView)
        
        self.navigationItem.titleView = imageView
        
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor(red: CGFloat(72 / 255.0), green: CGFloat(122 / 255.0), blue: CGFloat(135 / 255.0), alpha: 1).CGColor
        border.frame = CGRect(x: 0, y: lineView.frame.width * 0.15, width: lineView.frame.size.width * 0.7, height: lineView.frame.size.height)
        border.borderWidth = width
        lineView.layer.addSublayer(border)
        
        lineView.layer.cornerRadius = 0.0
        lineView.layer.masksToBounds = true
        lineView.backgroundColor = UIColor.orangeColor()
    }
    
    
}
