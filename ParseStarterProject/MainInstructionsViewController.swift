//
//  MainInstructionsViewController.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Anirudh Narayan on 11/2/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit

class MainInstructionsViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let localfilePath = NSBundle.mainBundle().URLForResource("MainInstructions", withExtension: "html");
//        let myRequest = NSURLRequest(URL: localfilePath!);
//        webView.loadRequest(myRequest);
        let c = Colors()
        c.gl.frame = self.view.frame
        self.view.layer.insertSublayer(c.gl, atIndex: 0)
        self.navigationController?.navigationBarHidden = false
        
        let image = UIImage(named: "LifenestLogo")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.opaque = true
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image!
        
        print(imageView)
        
        self.navigationItem.titleView = imageView
        
    }
    
    @IBAction func startTestPressed()
    {
        print("Button Pressed")
        let vc = UIViewController()
        let imageView = UIImageView(frame: vc.view.frame)
        imageView.image = UIImage(named: "Take a Picture + Instructions")
        vc.view.addSubview(imageView)
        
        let tgs = UITapGestureRecognizer(target: self, action: "tapPressed")
        vc.view.addGestureRecognizer(tgs)
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    func tapPressed()
    {
        self.dismissViewControllerAnimated(true, completion: nil)
        self.performSegueWithIdentifier("takePictureSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}