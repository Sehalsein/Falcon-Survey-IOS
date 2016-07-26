//
//  LoginViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 14/07/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var progressView: UIActivityIndicatorView!
 
    @IBOutlet weak var baseConstraint: NSLayoutConstraint!
   
    
    
    var vEmail: String?
    var vPassword : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if progressView != nil {
            progressView.hidden=true
        }
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(LoginViewController.keyboardFrameWillChange(_:)), name: UIKeyboardWillChangeFrameNotification, object: nil)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func keyboardFrameWillChange(notification: NSNotification) {
        let keyboardBeginFrame = (notification.userInfo! as NSDictionary).objectForKey(UIKeyboardFrameBeginUserInfoKey)!.CGRectValue
        let keyboardEndFrame = (notification.userInfo! as NSDictionary).objectForKey(UIKeyboardFrameEndUserInfoKey)!.CGRectValue
        
        let animationCurve = UIViewAnimationCurve(rawValue: (notification.userInfo! as NSDictionary).objectForKey(UIKeyboardAnimationCurveUserInfoKey)!.integerValue)
        
        let animationDuration: NSTimeInterval = (notification.userInfo! as NSDictionary).objectForKey(UIKeyboardAnimationDurationUserInfoKey)!.doubleValue
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(animationDuration)
        UIView.setAnimationCurve(animationCurve!)
        
        var newFrame = self.view.frame
        let keyboardFrameEnd = self.view.convertRect(keyboardEndFrame, toView: nil)
        let keyboardFrameBegin = self.view.convertRect(keyboardBeginFrame, toView: nil)
        
        newFrame.origin.y -= (keyboardFrameBegin.origin.y - keyboardFrameEnd.origin.y)
        self.view.frame = newFrame;
        
        UIView.commitAnimations()
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
    @IBAction func login(sender: AnyObject) {
        
        vEmail=username.text
        vPassword=password.text
        progressView.startAnimating()
        progressView.hidden=false
        
//        FIRAuth.auth()?.signInWithEmail(vEmail!, password: vPassword!, completion: { (user, error) in
//            if error != nil {
//                print("Login Failed")
//                let alert = UIAlertController(title: "Alert!", message: "Email Id or Password not Valid.", preferredStyle: UIAlertControllerStyle.Alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//                self.presentViewController(alert, animated: true, completion: nil)
//                self.progressView.stopAnimating()
//                self.progressView.hidden=true
//            }else{
//                    FIRDatabase.database().reference().child("user").child((user?.uid)!).observeEventType(.Value, withBlock:{ (snapshot) in
//                    let Admin=snapshot.value!["privilege"] as? String
//                    if(Admin == "user"){
//                        print("SUCCESFULL")
//                        print("SignIn")
//                        self.progressView.stopAnimating()
//                        self.progressView.hidden=true
                      self.performSegueWithIdentifier("loginSegue", sender: self)
//                    }else{
//                        let alert = UIAlertController(title: "Alert!", message: "Access Denied!", preferredStyle: UIAlertControllerStyle.Alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//                        self.presentViewController(alert, animated: true, completion: nil)
//                        self.progressView.stopAnimating()
//                        self.progressView.hidden=true
//                        print("NOT ENOUGH ACCESS")
//                    }
//                    },withCancelBlock: nil)
//            }
//        })
    }

    

}
