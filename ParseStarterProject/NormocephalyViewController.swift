//
//  NormocephalyViewController.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Anirudh Narayan on 11/11/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class NormocephalyViewController: UIViewController {

    @IBAction func testAgainButtonPressed(sender: UIButton)
    {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBOutlet weak var symptomDetails: UITextView!
    
   
    @IBOutlet weak var symptomLabel: UILabel!
    var symtopmDetailsLocal = ""
    
    var image: UIImage = UIImage()
    var CranialIndex: Double = 0;
    var CVAI: Double = 0;
    var symptom: String = String()
    var todaysDate:NSDate = NSDate()
    @IBAction func startOver(sender: AnyObject) {
        var image = PFObject(className: "image")
        image["pointerToUser"] = PFUser.currentUser()!
        
        let imageData = UIImageJPEGRepresentation(self.image, 0.1)
        let imageFile = PFFile(data: imageData!)
        
        image["imageFile"] = imageFile
        
        image["DateOfTest"] = String(self.todaysDate)
        image["CranialIndex"] = String(self.CranialIndex)
        image["CVAI"] = String(self.CVAI)
        image["Symptom"] = String(self.symptom)
        image.saveInBackgroundWithBlock({ (success: Bool, error: NSError?) -> Void in
            if (success)
            {
                print("saveSuccess")

                self.performSegueWithIdentifier("startOver", sender: self)
            }
            else
            {
                
                print(error?.description)
                let alertController = UIAlertController(title: "Something went wrong", message: "Please check your network connection before trying again", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "Got it!", style: .Default, handler: nil)
                alertController.addAction(defaultAction)
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        })
    }
    
    @IBAction func sendResults(sender: AnyObject) {
        performSegueWithIdentifier("segueTocopyOfResultsVC", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.symptomLabel.text = self.symptom
        self.symptomDetails.text = self.symtopmDetailsLocal
        // Do any additional setup after loading the view.
        
        let c = Colors()
        c.gl.frame = self.view.frame
        self.view.layer.insertSublayer(c.gl, atIndex: 0)
        
        symptomDetails.backgroundColor = UIColor.clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier != "startOver" {
        var resultScene = segue.destinationViewController as! CustomerInformationViewController
        // Pass the selected object to the new view controller.
        resultScene.image = self.image
        resultScene.CranialIndex = self.CranialIndex
        //        print("outgoing left diagonal length to CVAI2 \(self.leftDiagonalLength)")
        resultScene.CVAI = self.CVAI
        resultScene.symptom = self.symptom
        }
    }

    /*
    // MARK: - Navigation

    // In a stor
    yboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
