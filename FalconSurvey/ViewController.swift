//
//  ViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 33/013/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var quetion1Hour: UITextField!
    @IBOutlet weak var quetion1Minute: UITextField!
    
    @IBOutlet weak var quetion2Option5: UIButton!
    @IBOutlet weak var quetion2Option4: UIButton!
    @IBOutlet weak var quetion2Option3: UIButton!
    @IBOutlet weak var quetion2Option2: UIButton!
    @IBOutlet weak var quetion2Option1: UIButton!
    @IBOutlet weak var quetion2Reason: UITextField!
    
    @IBOutlet weak var quetion3Visibility: UITextField!
    @IBOutlet weak var quetion3Wind: UITextField!
    @IBOutlet weak var quetion3Turbulence: UITextField!
    @IBOutlet weak var quetion3TurbulenceHeavy: UIButton!
    @IBOutlet weak var quetion3TurbulenceMedium: UIButton!
    @IBOutlet weak var quetion3TurbulenceLight: UIButton!
    
    
    @IBOutlet weak var quetion4Visibility: UITextField!
    @IBOutlet weak var quetion4Wind: UITextField!
    @IBOutlet weak var quetion4Turbulence: UITextField!
    @IBOutlet weak var quetion4TurbulenceHeavy: UIButton!
    @IBOutlet weak var quetion4TurbulenceMedium: UIButton!
    @IBOutlet weak var quetion4TurbulenceLight: UIButton!
    
    
    @IBOutlet weak var quetion5Yes: UIButton!
    @IBOutlet weak var quetion5No: UIButton!
    
    @IBOutlet weak var quetion6Yes: UIButton!
    @IBOutlet weak var quetion6No: UIButton!
    @IBOutlet weak var quetion6Reason: UITextField!
    
    @IBOutlet weak var quetion7Yes: UIButton!
    @IBOutlet weak var quetion7No: UIButton!
    @IBOutlet weak var quetion7Reason: UITextField!
    
    @IBOutlet weak var quetion8Yes: UIButton!
    @IBOutlet weak var quetion8No: UIButton!
    @IBOutlet weak var quetion8Reason: UITextField!
    
    @IBOutlet weak var quetion9Option5: UIButton!
    @IBOutlet weak var quetion9Option4: UIButton!
    @IBOutlet weak var quetion9Option3: UIButton!
    @IBOutlet weak var quetion9Option2: UIButton!
    @IBOutlet weak var quetion9Option1: UIButton!
    @IBOutlet weak var quetion9Reason: UITextField!
    
    @IBOutlet weak var quetion10Option5: UIButton!
    @IBOutlet weak var quetion10Option4: UIButton!
    @IBOutlet weak var quetion10Option3: UIButton!
    @IBOutlet weak var quetion10Option2: UIButton!
    @IBOutlet weak var quetion10Option1: UIButton!
    @IBOutlet weak var quetion10Reason: UITextField!
    
    @IBOutlet weak var quetion11Option5: UIButton!
    @IBOutlet weak var quetion11Option4: UIButton!
    @IBOutlet weak var quetion11Option3: UIButton!
    @IBOutlet weak var quetion11Option2: UIButton!
    @IBOutlet weak var quetion11Option1: UIButton!
    @IBOutlet weak var quetion11Reason: UITextField!
    
    @IBOutlet weak var quetion12Option5: UIButton!
    @IBOutlet weak var quetion12Option4: UIButton!
    @IBOutlet weak var quetion12Option3: UIButton!
    @IBOutlet weak var quetion12Option2: UIButton!
    @IBOutlet weak var quetion12Option1: UIButton!
    @IBOutlet weak var quetion12Reason: UITextField!
    
    @IBOutlet weak var quetion13Option5: UIButton!
    @IBOutlet weak var quetion13Option4: UIButton!
    @IBOutlet weak var quetion13Option3: UIButton!
    @IBOutlet weak var quetion13Option2: UIButton!
    @IBOutlet weak var quetion13Option1: UIButton!
    @IBOutlet weak var quetion13Reason: UITextField!
    
    @IBOutlet weak var quetion14Yes: UIButton!
    @IBOutlet weak var quetion14No: UIButton!
    @IBOutlet weak var quetion14Reason: UITextField!
    
    @IBOutlet weak var quetion15Yes: UIButton!
    @IBOutlet weak var quetion15No: UIButton!
    @IBOutlet weak var quetion15Reason: UITextField!
    
    @IBOutlet weak var quetion16Yes: UIButton!
    @IBOutlet weak var quetion16No: UIButton!
    @IBOutlet weak var quetion16Reason: UITextField!
    
    @IBOutlet weak var quetion17Yes: UIButton!
    @IBOutlet weak var quetion17No: UIButton!
    @IBOutlet weak var quetion17Reason: UITextField!
    
    @IBOutlet weak var quetion18Yes: UIButton!
    @IBOutlet weak var quetion18No: UIButton!
    @IBOutlet weak var quetion18Reason: UITextField!
    
    @IBOutlet weak var quetion19Yes: UIButton!
    @IBOutlet weak var quetion19No: UIButton!
    @IBOutlet weak var quetion19Reason: UITextField!
    
    @IBOutlet weak var quetion20Hour: UITextField!
    @IBOutlet weak var quetion20Minute: UITextField!
    
    @IBOutlet weak var quetion21Hour: UITextField!
    @IBOutlet weak var quetion21Minute: UITextField!
    
    @IBOutlet weak var quetion22Hour: UITextField!
    @IBOutlet weak var quetion22Minute: UITextField!
    
    @IBOutlet weak var quetion23Hour: UITextField!
    @IBOutlet weak var quetion23Minute: UITextField!
    
    @IBOutlet weak var quetion24Hour: UITextField!
    @IBOutlet weak var quetion24Minute: UITextField!
    
    @IBOutlet weak var additionalComment: UITextView!
    
    
    let rootReference = FIRDatabase.database().reference()
    
    var vQuetion1Hour : String = "null"
    var vQuetion1Minute : String = "null"
    var Quetion2 : String="null"
    var vQuetion2Reason : String = "null"
    var Quetion3 : String="null"
    var vQuetion3Visibility : String = "null"
    var vQuetion3Wind : String = "null"
    var vQuetion3Turbulence : String = "null"
    var Quetion4 : String = "null"
    var vQuetion4Visibility : String = "null"
    var vQuetion4Wind : String = "null"
    var vQuetion4Turbulence : String = "null"
    var Quetion5 : String="null"
    var Quetion6 : String="null"
    var vQuetion6Reason : String="null"
    var Quetion7 : String="null"
    var vQuetion7Reason : String="null"
    var Quetion8 : String="null"
    var vQuetion8Reason : String="null"
    var Quetion9 : String="null"
    var vQuetion9Reason : String = "null"
    var Quetion10 : String="null"
    var vQuetion10Reason : String = "null"
    var Quetion11 : String="null"
    var vQuetion11Reason : String = "null"
    var Quetion12 : String="null"
    var vQuetion12Reason : String = "null"
    var Quetion13 : String="null"
    var vQuetion13Reason : String = "null"
    var Quetion14 : String="null"
    var vQuetion14Reason : String="null"
    var Quetion15 : String="null"
    var vQuetion15Reason : String="null"
    var Quetion16 : String="null"
    var vQuetion16Reason : String="null"
    var Quetion17 : String="null"
    var vQuetion17Reason : String="null"
    var Quetion18 : String="null"
    var vQuetion18Reason : String="null"
    var Quetion19 : String="null"
    var vQuetion19Reason : String="null"
    var vQuetion20Hour : String="null"
    var vQuetion20Minute : String="null"
    var vQuetion21Hour : String="null"
    var vQuetion21Minute : String="null"
    var vQuetion22Hour : String="null"
    var vQuetion22Minute : String="null"
    var vQuetion23Hour : String="null"
    var vQuetion23Minute : String="null"
    var vQuetion24Hour : String = "null"
    var vQuetion24Minute : String = "null"
    var vAdditionalComment : String = "null"
    var vUserId = "null"
    var vName = "null"
    var vDate = "null"
    
    let NA = "Not Applicable"
    let yes="YES"
    let no="NO"
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func quetion2Option5(sender: UIButton) {
        Quetion2="5"
        //print("Quetion 2 :"+Quetion2)
        quetion2Reason.hidden=true
    }
    @IBAction func quetion2Option4(sender: UIButton) {
        Quetion2="4"
        quetion2Reason.hidden=true
        //print("Quetion 2 :"+Quetion2)
        
    }
    @IBAction func quetion2Option3(sender: UIButton) {
        Quetion2="3"
        quetion2Reason.hidden=true
        //print("Quetion 2 :"+Quetion2)
        
    }
    @IBAction func quetion2Option2(sender: UIButton) {
        Quetion2="2"
        quetion2Reason.hidden=false
        //print("Quetion 2 :"+Quetion2)
        
    }
    @IBAction func quetion2Option1(sender: UIButton) {
        Quetion2="1"
        quetion2Reason.hidden=false
        //print("Quetion 2 :"+Quetion2)
        
    }
    @IBAction func quetion3TurbulenceHeavy(sender: UIButton) {
        vQuetion3Turbulence="Heavy"
        print(vQuetion3Turbulence)
    }
    @IBAction func quetion3TurbulenceMedium(sender: UIButton) {
        vQuetion3Turbulence="Medium"
        print(vQuetion3Turbulence)
        
    }
    @IBAction func quetion3TurbulenceLight(sender: UIButton) {
        vQuetion3Turbulence="Light"
        print(vQuetion3Turbulence)
        
    }
    @IBAction func quetion4TurbulenceHeavy(sender: UIButton) {
        vQuetion4Turbulence="Heavy"
        print(vQuetion4Turbulence)
    }
    @IBAction func quetion4TurbulenceMedium(sender: UIButton) {
        vQuetion4Turbulence="Medium"
        print(vQuetion4Turbulence)
        
    }
    @IBAction func quetion4TurbulenceLight(sender: UIButton) {
        vQuetion4Turbulence="Light"
        print(vQuetion4Turbulence)
        
    }
    @IBAction func quetion5Yes(sender: UIButton) {
        Quetion5=yes
        //print("Quetion 5 : "+Quetion5)
    }
    @IBAction func quetion5No(sender: UIButton) {
        Quetion5=no
        //print("Quetion 5 : "+Quetion5)
    }
    
    @IBAction func quetion6Yes(sender: UIButton) {
        Quetion6=yes
        quetion6Reason.hidden=true
        //print("Quetion 6 : "+Quetion6)
    }
    @IBAction func quetion6No(sender: UIButton) {
        Quetion6=no
        quetion6Reason.hidden=false
        //print("Quetion 6 : "+Quetion6)
    }
    
    @IBAction func quetion7Yes(sender: UIButton) {
        Quetion7=yes
        quetion7Reason.hidden=true
        //print("Quetion 7 : "+Quetion7)
    }
    @IBAction func quetion7No(sender: UIButton) {
        Quetion7=no
        quetion7Reason.hidden=false
        //print("Quetion 7 : "+Quetion7)
    }
    
    @IBAction func quetion8Yes(sender: UIButton) {
        Quetion8=yes
        quetion8Reason.hidden=true
        //print("Quetion 8 : "+Quetion8)
    }
    @IBAction func quetion8No(sender: UIButton) {
        Quetion8=no
        quetion8Reason.hidden=false
        //print("Quetion 8 : "+Quetion8)
    }
    
    @IBAction func quetion9Option5(sender: UIButton) {
        Quetion9="5"
        quetion9Reason.hidden=true
        //print("Quetion 9 : "+Quetion9)
    }
    @IBAction func quetion9Option4(sender: UIButton) {
        Quetion9="4"
        quetion9Reason.hidden=true
        //print("Quetion 9 : "+Quetion9)
    }
    @IBAction func quetion9Option3(sender: UIButton) {
        Quetion9="3"
        quetion9Reason.hidden=true
        //print("Quetion 9 : "+Quetion9)
    }
    @IBAction func quetion9Option2(sender: UIButton) {
        Quetion9="2"
        quetion9Reason.hidden=false
        //print("Quetion 9 : "+Quetion9)
    }
    @IBAction func quetion9Option1(sender: UIButton) {
        Quetion9="1"
        quetion9Reason.hidden=false
        //print("Quetion 9 : "+Quetion9)
    }
    
    @IBAction func quetion10Option5(sender: UIButton) {
        Quetion10="5"
        quetion10Reason.hidden=true
        //print("Quetion 10 : "+Quetion10)
    }
    @IBAction func quetion10Option4(sender: UIButton) {
        Quetion10="4"
        quetion10Reason.hidden=true
        //print("Quetion 10 : "+Quetion10)
    }
    @IBAction func quetion10Option3(sender: UIButton) {
        Quetion10="3"
        quetion10Reason.hidden=true
        //print("Quetion 10 : "+Quetion10)
    }
    @IBAction func quetion10Option2(sender: UIButton) {
        Quetion10="2"
        quetion10Reason.hidden=false
        //print("Quetion 10 : "+Quetion10)
    }
    @IBAction func quetion10Option1(sender: UIButton) {
        Quetion10="1"
        quetion10Reason.hidden=false
        //print("Quetion 10 : "+Quetion10)
    }
    
    @IBAction func quetion11Option5(sender: UIButton) {
        Quetion11="5"
        quetion11Reason.hidden=true
        //print("Quetion 11 : "+Quetion11)
    }
    @IBAction func quetion11Option4(sender: UIButton) {
        Quetion11="4"
        quetion11Reason.hidden=true
        //print("Quetion 11 : "+Quetion11)
    }
    @IBAction func quetion11Option3(sender: UIButton) {
        Quetion11="3"
        quetion11Reason.hidden=true
        //print("Quetion 11 : "+Quetion11)
    }
    @IBAction func quetion11Option2(sender: UIButton) {
        Quetion11="2"
        quetion11Reason.hidden=false
        //print("Quetion 11 : "+Quetion11)
    }
    @IBAction func quetion11Option1(sender: UIButton) {
        Quetion11="1"
        quetion11Reason.hidden=false
        //print("Quetion 11 : "+Quetion11)
    }
    
    @IBAction func quetion12Option5(sender: UIButton) {
        Quetion12="5"
        quetion12Reason.hidden=true
        //print("Quetion 12 : "+Quetion12)
    }
    @IBAction func quetion12Option4(sender: UIButton) {
        Quetion12="4"
        quetion12Reason.hidden=true
        //print("Quetion 12 : "+Quetion12)
    }
    @IBAction func quetion12Option3(sender: UIButton) {
        Quetion12="3"
        quetion12Reason.hidden=true
        //print("Quetion 12 : "+Quetion12)
    }
    @IBAction func quetion12Option2(sender: UIButton) {
        Quetion12="2"
        quetion12Reason.hidden=false
        //print("Quetion 12 : "+Quetion12)
    }
    @IBAction func quetion12Option1(sender: UIButton) {
        Quetion12="1"
        quetion12Reason.hidden=false
        //print("Quetion 12 : "+Quetion12)
    }
    
    @IBAction func quetion13Option5(sender: UIButton) {
        Quetion13="5"
        quetion13Reason.hidden=true
        //print("Quetion 13 : "+Quetion13)
    }
    @IBAction func quetion13Option4(sender: UIButton) {
        Quetion13="4"
        quetion13Reason.hidden=true
        //print("Quetion 13 : "+Quetion13)
    }
    @IBAction func quetion13Option3(sender: UIButton) {
        Quetion13="3"
        quetion13Reason.hidden=true
        //print("Quetion 13 : "+Quetion13)
    }
    @IBAction func quetion13Option2(sender: UIButton) {
        Quetion13="2"
        quetion13Reason.hidden=false
        //print("Quetion 13 : "+Quetion13)
    }
    @IBAction func quetion13Option1(sender: UIButton) {
        Quetion13="1"
        quetion13Reason.hidden=false
        //print("Quetion 13 : "+Quetion13)
    }
    
    @IBAction func quetion14Yes(sender: UIButton) {
        quetion14Reason.hidden=false
        Quetion14=yes
        //print("Quetion 14 : "+Quetion14)
    }
    @IBAction func quetion14No(sender: UIButton) {
        quetion14Reason.hidden=true
        Quetion14=no
        //print("Quetion 14 : "+Quetion14)
    }
    
    @IBAction func quetion15Yes(sender: UIButton) {
        quetion15Reason.hidden=false
        Quetion15=yes
        //print("Quetion 15 : "+Quetion15)
    }
    @IBAction func quetion15No(sender: UIButton) {
        quetion15Reason.hidden=true
        Quetion15=no
        //print("Quetion 15 : "+Quetion15)
    }
    
    @IBAction func quetion16Yes(sender: UIButton) {
        quetion16Reason.hidden=false
        Quetion16=yes
        //print("Quetion 16 : "+Quetion16)
    }
    @IBAction func quetion16No(sender: UIButton) {
        quetion16Reason.hidden=true
        Quetion16=no
        //print("Quetion 16 : "+Quetion16)
    }
    
    @IBAction func quetion17Yes(sender: UIButton) {
        quetion17Reason.hidden=false
        Quetion17=yes
        //print("Quetion 17 : "+Quetion17)
    }
    @IBAction func quetion17No(sender: UIButton) {
        quetion17Reason.hidden=true
        Quetion17=no
        //print("Quetion 17 : "+Quetion17)
    }
    
    @IBAction func quetion18Yes(sender: UIButton) {
        quetion18Reason.hidden=false
        Quetion18=yes
        //print("Quetion 18 : "+Quetion18)
    }
    @IBAction func quetion18No(sender: UIButton) {
        quetion18Reason.hidden=true
        Quetion18=no
        //print("Quetion 18 : "+Quetion18)
    }
    
    @IBAction func quetion19Yes(sender: UIButton) {
        quetion19Reason.hidden=false
        Quetion19=yes
        //print("Quetion 19 : "+Quetion19)
    }
    @IBAction func quetion19No(sender: UIButton) {
        quetion19Reason.hidden=true
        Quetion19=no
        //print("Quetion 19 : "+Quetion19)
    }
    @IBAction func quetion20Hour(sender: AnyObject) {
        let number : Int? = Int(quetion20Hour.text!)
        if number <= 24 && number >= 0 {
            vQuetion20Hour = quetion20Hour.text!
        }else{
            vQuetion20Hour="null"
            //quetion20Hour.becomeFirstResponder()
            print("quetion20 Hour : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 24.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func quetion20Minute(sender: AnyObject) {
        let number : Int? = Int(quetion20Minute.text!)
        if number <= 59 && number >= 0 {
            vQuetion20Minute = quetion20Minute.text!
        }else{
            vQuetion20Minute="null"
            //quetion20Minute.becomeFirstResponder()
            print("quetion20 Minute : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please Enter time between 00 and 59.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func quetion21Hour(sender: AnyObject) {
        let number : Int? = Int(quetion21Hour.text!)
        if number <= 11 && number >= 0 {
            vQuetion21Hour = quetion21Hour.text!
        }else{
            vQuetion21Hour="null"
            //quetion21Hour.becomeFirstResponder()
            print("quetion21 Hour : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 11.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    @IBAction func quetion21Minute(sender: AnyObject) {
        let number : Int? = Int(quetion21Minute.text!)
        if number <= 59 && number >= 0 {
            vQuetion21Minute = quetion21Minute.text!
        }else{
            vQuetion21Minute="null"
            //quetion21Minute.becomeFirstResponder()
            print("quetion21Minute : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 59.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func quetion22Hour(sender: AnyObject) {
        let number : Int? = Int(quetion22Hour.text!)
        if number <= 11 && number >= 0 {
            vQuetion22Hour = quetion22Hour.text!
        }else{
            vQuetion22Hour="null"
            // quetion22Hour.becomeFirstResponder()
            print("quetion22 Hour : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 11.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    @IBAction func quetion22Minute(sender: AnyObject) {
        let number : Int? = Int(quetion22Minute.text!)
        if number <= 59 && number >= 0 {
            vQuetion22Minute = quetion22Minute.text!
        }else{
            vQuetion22Minute="null"
            //quetion22Minute.becomeFirstResponder()
            print("quetion22Minute : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 59.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func quetion23Hour(sender: AnyObject) {
        let number : Int? = Int(quetion23Hour.text!)
        if number <= 11 && number >= 0 {
            vQuetion23Hour = quetion23Hour.text!
        }else{
            vQuetion23Hour="null"
            //quetion23Hour.becomeFirstResponder()
            print("quetion23 Hour : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 11.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    @IBAction func quetion23Minute(sender: AnyObject) {
        let number : Int? = Int(quetion23Minute.text!)
        if number <= 59 && number >= 0 {
            vQuetion23Minute = quetion23Minute.text!
        }else{
            vQuetion23Minute="null"
            //quetion23Minute.becomeFirstResponder()
            print("quetion23 Minute : Not a valid time")
            let alert = UIAlertController(title: "Invalid Time!", message: "Please enter time between 00 and 59.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func submit(sender: AnyObject) {
        print("submit")
        
        if validate() {
            vAdditionalComment=additionalComment.text
            logdisplay()
            let key = rootReference.child("flightreport").childByAutoId().key
            let surveyData=["userId": vUserId,
                            "name":vName,
                            "quetion1Hour": vQuetion1Hour,
                            "quetion1Minute": vQuetion1Minute,
                            "date":getDate(),
                            "quetion2": Quetion2,
                            "quetion2Reason": vQuetion2Reason,
                            "quetion3Visibility": vQuetion3Visibility,
                            "quetion3Wind": vQuetion3Wind,
                            "quetion3Turbulence": vQuetion3Turbulence,
                            "quetion4Visibility": vQuetion4Visibility,
                            "quetion4Wind": vQuetion4Wind,
                            "quetion4Turbulence": vQuetion4Turbulence,
                            "quetion5": Quetion5,
                            "quetion6": Quetion6,
                            "quetion6Reason": vQuetion6Reason,
                            "quetion7": Quetion7,
                            "quetion7Reason": vQuetion7Reason,
                            "quetion8": Quetion8,
                            "quetion8Reason": vQuetion8Reason,
                            "quetion9": Quetion9,
                            "quetion9Reason": vQuetion9Reason,
                            "quetion10": Quetion10,
                            "quetion10Reason": vQuetion10Reason,
                            "quetion11": Quetion11,
                            "quetion11Reason": vQuetion11Reason,
                            "quetion12": Quetion12,
                            "quetion12Reason": vQuetion12Reason,
                            "quetion13": Quetion13,
                            "quetion13Reason": vQuetion13Reason,
                            "quetion14": Quetion14,
                            "quetion14Reason": vQuetion14Reason,
                            "quetion15": Quetion15,
                            "quetion15Reason": vQuetion15Reason,
                            "quetion16": Quetion16,
                            "quetion16Reason": vQuetion16Reason,
                            "quetion17": Quetion17,
                            "quetion17Reason": vQuetion17Reason,
                            "quetion18": Quetion18,
                            "quetion18Reason": vQuetion18Reason,
                            "quetion19": Quetion19,
                            "quetion19Reason": vQuetion19Reason,
                            "quetion20Hour": vQuetion20Hour,
                            "quetion20Minute": vQuetion20Minute,
                            "quetion21Hour": vQuetion21Hour,
                            "quetion21Minute": vQuetion21Minute,
                            "quetion22Hour": vQuetion22Hour,
                            "quetion22Minute": vQuetion22Minute,
                            "quetion23Hour": vQuetion23Hour,
                            "quetion23Minute": vQuetion23Minute,
                            "quetion24Hour": vQuetion24Hour,
                            "quetion24Minute": vQuetion24Minute,
                            "additionalComment":vAdditionalComment,
                            "key":key
                
            ]
            
            let postDetail = ["userId": vUserId,
                              "name": vName,
                              "date": getDate(),
                              "key" : key,
                              "type" : "flightreport"
            ]
            
            
            let childUpdates = [ "/posts/\(key)": postDetail,
                                 "/userposts/\(vUserId)/\(key)/": postDetail,
                                 "/userpostsflightreport/\(vUserId)/\(key)/": surveyData,
                                 "/flightreport/\(key)": surveyData,
                                 ]
            
            rootReference.updateChildValues(childUpdates)
            print("Complete")
            //surveyReference.childByAutoId().setValue(surveyData)
            self.performSegueWithIdentifier("submitSegue", sender: self)
        }else{
            let alert = UIAlertController(title: "Alert!", message: "Please fill all fields.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            print("Survey Incomplete")
        }
        
        
    }
    func logdisplay() -> Void {
        print("Quetion1Hour :"+vQuetion1Hour)
        print("Quetion1Minute :"+vQuetion1Minute)
        print("Quetion2 :"+Quetion2)
        print("Quetion2 Reason :"+vQuetion2Reason)
        print("Quetion3 Visibility :"+vQuetion3Visibility)
        print("Quetion3 Wind :"+vQuetion3Wind)
        print("Quetion3 Turbulence:"+vQuetion3Turbulence)
        print("Quetion4 Visibility :"+vQuetion4Visibility)
        print("Quetion4 Wind :"+vQuetion4Wind)
        print("Quetion4 Turbulence:"+vQuetion4Turbulence)
        print("Quetion5 :"+Quetion5)
        print("Quetion6 :"+Quetion6)
        print("Quetion6 Reason :"+vQuetion6Reason)
        print("Quetion7 :"+Quetion7)
        print("Quetion7 Reason :"+vQuetion7Reason)
        print("Quetion8 :"+Quetion8)
        print("Quetion8 Reason :"+vQuetion8Reason)
        print("Quetion9 :"+Quetion9)
        print("Quetion9 Reason :"+vQuetion9Reason)
        print("Quetion10 :"+Quetion10)
        print("Quetion10 Reason :"+vQuetion10Reason)
        print("Quetion11 :"+Quetion11)
        print("Quetion11 Reason :"+vQuetion11Reason)
        print("Quetion12 :"+Quetion12)
        print("Quetion12 Reason :"+vQuetion12Reason)
        print("Quetion13 :"+Quetion13)
        print("Quetion13 Reason :"+vQuetion13Reason)
        print("Quetion14 :"+Quetion14)
        print("Quetion14 Reason :"+vQuetion14Reason)
        print("Quetion15 :"+Quetion15)
        print("Quetion15 Reason :"+vQuetion15Reason)
        print("Quetion16 :"+Quetion16)
        print("Quetion16 Reason :"+vQuetion16Reason)
        print("Quetion17 :"+Quetion17)
        print("Quetion17 Reason :"+vQuetion17Reason)
        print("Quetion18 :"+Quetion18)
        print("Quetion18 Reason :"+vQuetion18Reason)
        print("Quetion19 :"+Quetion19)
        print("Quetion19 Reason :"+vQuetion19Reason)
        print("Quetion20 Hour :"+vQuetion20Hour)
        print("Quetion20 Minute :"+vQuetion20Minute)
        print("Quetion21 Hour :"+vQuetion21Hour)
        print("Quetion21 Minute :"+vQuetion21Minute)
        print("Quetion22 Hour :"+vQuetion22Hour)
        print("Quetion22 Minute :"+vQuetion22Minute)
        print("Quetion23 Hour :"+vQuetion23Hour)
        print("Quetion23 Minute :"+vQuetion23Minute)
        print("Quetion24 Hour :"+vQuetion24Hour)
        print("Quetion24 Minute :"+vQuetion24Minute)
    }
    
    func validate() -> Bool {
        
        if quetion1Hour.text!.isEmpty {
            vQuetion1Hour="null"
            print("quetion1Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion1Hour.text!)
            if number <= 23 && number >= 0 {
                vQuetion1Hour = quetion1Hour.text!
            }else{
                vQuetion1Hour="null"
                print("quetion1Hour : Not a valid time")
            }
            //print(vQuetion21Hour)
        }
        if quetion1Minute.text!.isEmpty {
            vQuetion1Minute="null"
            print("quetion1Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion1Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion1Minute = quetion1Minute.text!
            }else{
                vQuetion1Hour="null"
                print("quetion1Minute : Not a valid time")
            }
            //print(vQuetion1Hour)
        }
        
        if quetion3Visibility.text!.isEmpty {
            vQuetion3Visibility="null"
            print("quetion3Visibility : Please Enter")
        }else{
            vQuetion3Visibility = quetion3Visibility.text!
            //print(vQuetion3Visibility)
        }
        if quetion3Wind.text!.isEmpty {
            vQuetion3Wind="null"
            print("quetion3Wind : Please Enter")
        }else{
            vQuetion3Wind = quetion3Wind.text!
            //print(vQuetion3Wind)
        }
        /*if quetion3Turbulence.text!.isEmpty {
         vQuetion3Turbulence="null"
         print("quetion3Turbulence : Please Enter")
         }else{
         vQuetion3Turbulence = quetion3Turbulence.text!
         //print(vQuetion3Turbulence)
         }*/
        
        if quetion4Visibility.text!.isEmpty {
            vQuetion4Visibility="null"
            print("quetion4Visibility : Please Enter")
        }else{
            vQuetion4Visibility = quetion4Visibility.text!
            //print(vQuetion4Visibility)
        }
        if quetion4Wind.text!.isEmpty {
            vQuetion4Wind="null"
            print("quetion4Wind : Please Enter")
        }else{
            vQuetion4Wind = quetion4Wind.text!
            //print(vQuetion4Wind)
        }
        /*
         if quetion4Turbulence.text!.isEmpty {
         vQuetion4Turbulence="null"
         print("quetion4Turbulence : Please Enter")
         }else{
         vQuetion4Turbulence = quetion4Turbulence.text!
         //print(vQuetion4Turbulence)
         }*/
        
        if quetion20Hour.text!.isEmpty {
            vQuetion20Hour="null"
            print("quetion20Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion20Hour.text!)
            if number <= 23 && number >= 0 {
                vQuetion20Hour = quetion20Hour.text!
            }else{
                vQuetion20Hour="null"
                print("quetion20Hour : Not a valid time")
            }
            //print(vQuetion20Hour)
        }
        if quetion20Minute.text!.isEmpty {
            vQuetion20Minute="null"
            print("quetion20Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion20Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion20Minute = quetion20Minute.text!
            }else{
                vQuetion20Minute="null"
                print("quetion20Minute : Not a valid time")
            }
            //print(vQuetion20Minute)
        }
        
        if quetion21Hour.text!.isEmpty {
            vQuetion21Hour="null"
            print("quetion21Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion21Hour.text!)
            if number <= 11 && number >= 0 {
                vQuetion21Hour = quetion21Hour.text!
            }else{
                vQuetion21Hour="null"
                print("quetion21Hour : Not a valid time")
            }
            //print(vQuetion21Hour)
        }
        if quetion21Minute.text!.isEmpty {
            vQuetion21Minute="null"
            print("quetion21Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion21Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion21Minute = quetion21Minute.text!
            }else{
                vQuetion21Minute="null"
                print("quetion21Minute : Not a valid time")
            }
            //print(vQuetion21Minute)
        }
        
        if quetion22Hour.text!.isEmpty {
            vQuetion22Hour="null"
            print("quetion22Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion22Hour.text!)
            if number <= 11 && number >= 0 {
                vQuetion22Hour = quetion22Hour.text!
            }else{
                vQuetion22Hour="null"
                print("quetion22Hour : Not a valid time")
            }
            //print(vQuetion22Hour)
        }
        if quetion22Minute.text!.isEmpty {
            vQuetion22Minute="null"
            print("quetion22Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion22Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion22Minute = quetion22Minute.text!
            }else{
                vQuetion22Minute="null"
                print("quetion22Minute : Not a valid time")
            }            //print(vQuetion22Minute)
        }
        
        if quetion23Hour.text!.isEmpty {
            vQuetion23Hour="null"
            print("quetion23Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion23Hour.text!)
            if number <= 11 && number >= 0 {
                vQuetion23Hour = quetion23Hour.text!
            }else{
                vQuetion23Hour="null"
                print("quetion23Hour : Not a valid time")
            }
            //print(vQuetion23Hour)
        }
        if quetion23Minute.text!.isEmpty {
            vQuetion23Minute="null"
            print("quetion23Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion23Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion23Minute = quetion23Minute.text!
            }else{
                vQuetion23Minute="null"
                print("quetion23Minute : Not a valid time")
            }
            //print(vQuetion23Minute)
        }
        if quetion24Hour.text!.isEmpty {
            vQuetion24Hour="null"
            print("quetion24Hour : Please Enter")
        }else{
            let number : Int? = Int(quetion24Hour.text!)
            if number <= 23 && number >= 0 {
                vQuetion24Hour = quetion24Hour.text!
            }else{
                vQuetion24Hour="null"
                print("quetion24Hour : Not a valid time")
            }
            //print(vQuetion24Hour)
        }
        if quetion24Minute.text!.isEmpty {
            vQuetion24Minute="null"
            print("quetion24Minute : Please Enter")
        }else{
            let number : Int? = Int(quetion24Minute.text!)
            if number <= 59 && number >= 0 {
                vQuetion24Minute = quetion24Minute.text!
            }else{
                vQuetion24Minute="null"
                print("quetion24Minute : Not a valid time")
            }
            //            //print(vQuetion21Hour)
        }
        
        
        if  vQuetion1Hour != "null" &&
            vQuetion1Minute != "null" &&
            Quetion2 != "null" &&
            vQuetion3Visibility != "null" &&
            vQuetion3Wind != "null" &&
            vQuetion3Turbulence != "null" &&
            vQuetion4Visibility != "null" &&
            vQuetion4Wind != "null" &&
            vQuetion4Turbulence != "null" &&
            Quetion5 != "null" &&
            Quetion6 != "null" &&
            Quetion7 != "null" &&
            Quetion8 != "null" &&
            Quetion9 != "null" &&
            Quetion10 != "null" &&
            Quetion11 != "null" &&
            Quetion12 != "null" &&
            Quetion13 != "null" &&
            Quetion14 != "null" &&
            Quetion15 != "null" &&
            Quetion16 != "null" &&
            Quetion17 != "null" &&
            Quetion18 != "null" &&
            Quetion19 != "null" &&
            vQuetion20Hour != "null" &&
            vQuetion20Minute != "null" &&
            vQuetion21Hour != "null" &&
            vQuetion21Minute != "null" &&
            vQuetion22Hour != "null" &&
            vQuetion22Minute != "null" &&
            vQuetion23Hour != "null" &&
            vQuetion23Minute != "null" &&
            vQuetion24Hour != "null" &&
            vQuetion24Minute != "null"{
            
            
            if Quetion2 == "2" || Quetion2 == "2" {
                if quetion2Reason.text!.isEmpty {
                    vQuetion2Reason="null"
                    print("Quetion2Reason : Please Enter")
                }else{
                    vQuetion2Reason=quetion2Reason.text!
                }
            }else{
                vQuetion2Reason=NA
            }
            
            
            if Quetion6 == no {
                if quetion6Reason.text!.isEmpty {
                    vQuetion6Reason="null"
                    print("Quetion6Reason : Please Enter")
                }else{
                    vQuetion6Reason=quetion6Reason.text!
                }
            }else{
                vQuetion6Reason=NA
            }
            if Quetion7 == no {
                if quetion7Reason.text!.isEmpty {
                    vQuetion7Reason="null"
                    print("Quetion7Reason : Please Enter")
                }else{
                    vQuetion7Reason=quetion7Reason.text!
                }
            }else{
                vQuetion7Reason=NA
            }
            if Quetion8 == no {
                if quetion8Reason.text!.isEmpty {
                    vQuetion8Reason="null"
                    print("Quetion8Reason : Please Enter")
                }else{
                    vQuetion8Reason=quetion8Reason.text!
                }
            }else{
                vQuetion8Reason=NA
            }
            
            if Quetion9 == "2" || Quetion9 == "1" {
                if quetion9Reason.text!.isEmpty {
                    vQuetion9Reason="null"
                    print("Quetion9Reason : Please Enter")
                }else{
                    vQuetion9Reason=quetion9Reason.text!
                }
            }else{
                vQuetion9Reason=NA
            }
            
            if Quetion10 == "2" || Quetion10 == "1" {
                if quetion10Reason.text!.isEmpty {
                    vQuetion10Reason="null"
                    print("Quetion10Reason : Please Enter")
                }else{
                    vQuetion10Reason=quetion10Reason.text!
                }
            }else{
                vQuetion10Reason=NA
            }
            
            if Quetion11 == "2" || Quetion11 == "1" {
                if quetion11Reason.text!.isEmpty {
                    vQuetion11Reason="null"
                    print("Quetion11Reason : Please Enter")
                }else{
                    vQuetion11Reason=quetion11Reason.text!
                }
            }else{
                vQuetion11Reason=NA
            }
            
            if Quetion12 == "2" || Quetion12 == "1" {
                if quetion12Reason.text!.isEmpty {
                    vQuetion12Reason="null"
                    print("Quetion12Reason : Please Enter")
                }else{
                    vQuetion12Reason=quetion12Reason.text!
                }
            }else{
                vQuetion12Reason=NA
            }
            
            if Quetion13 == "2" || Quetion13 == "1" {
                if quetion13Reason.text!.isEmpty {
                    vQuetion13Reason="null"
                    print("Quetion13Reason : Please Enter")
                }else{
                    vQuetion13Reason=quetion13Reason.text!
                }
            }else{
                vQuetion13Reason=NA
            }
            
            if Quetion14 == yes {
                if quetion14Reason.text!.isEmpty {
                    vQuetion14Reason="null"
                    print("Quetion14Reason : Please Enter")
                }else{
                    vQuetion14Reason=quetion14Reason.text!
                }
            }else{
                vQuetion14Reason=NA
            }
            if Quetion15 == yes {
                if quetion15Reason.text!.isEmpty {
                    vQuetion15Reason="null"
                    print("Quetion15Reason : Please Enter")
                }else{
                    vQuetion15Reason=quetion15Reason.text!
                }
            }else{
                vQuetion15Reason=NA
            }
            if Quetion16 == yes {
                if quetion16Reason.text!.isEmpty {
                    vQuetion16Reason="null"
                    print("Quetion16Reason : Please Enter")
                }else{
                    vQuetion16Reason=quetion16Reason.text!
                }
            }else{
                vQuetion16Reason=NA
            }
            if Quetion17 == yes {
                if quetion17Reason.text!.isEmpty {
                    vQuetion17Reason="null"
                    print("Quetion17Reason : Please Enter")
                }else{
                    vQuetion17Reason=quetion17Reason.text!
                }
            }else{
                vQuetion17Reason=NA
            }
            if Quetion18 == yes {
                if quetion18Reason.text!.isEmpty {
                    vQuetion18Reason="null"
                    print("Quetion18Reason : Please Enter")
                }else{
                    vQuetion18Reason=quetion18Reason.text!
                }
            }else{
                vQuetion18Reason=NA
            }
            if Quetion19 == yes {
                if quetion19Reason.text!.isEmpty {
                    vQuetion19Reason="null"
                    print("Quetion19Reason : Please Enter")
                }else{
                    vQuetion19Reason=quetion19Reason.text!
                }
            }else{
                vQuetion19Reason=NA
            }
            
            if
                vQuetion2Reason != "null" &&
                    vQuetion6Reason != "null" &&
                    vQuetion7Reason != "null" &&
                    vQuetion8Reason != "null" &&
                    vQuetion9Reason != "null" &&
                    vQuetion10Reason != "null" &&
                    vQuetion11Reason != "null" &&
                    vQuetion12Reason != "null" &&
                    vQuetion13Reason != "null" &&
                    vQuetion14Reason != "null" &&
                    vQuetion15Reason != "null" &&
                    vQuetion16Reason != "null" &&
                    vQuetion17Reason != "null" &&
                    vQuetion18Reason != "null" &&
                    vQuetion19Reason != "null" {
                return true
            }else{
                return false
            }
        }
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Flight Report"
        //scrollView.contentSize.height=3000
        getDate()
        checkIfSignedIn()
    }
    
    func checkIfSignedIn() {
        
        if let user = FIRAuth.auth()?.currentUser {
            vUserId = user.uid
            vName = user.displayName!
        } else {
            print("NO USER")
        }
    }
    
    func getDate() -> Int {
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
        
        let year =  components.year
        let month = components.month
        let day = components.day
        let vMonth = String(format: "%02d", month)
        let vDay = String(format: "%02d", day)
        
        vDate = "\(year)" + vMonth + vDay
        
        return Int(vDate)!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

