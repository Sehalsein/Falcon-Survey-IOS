//
//  WeatherSurveyViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 26/07/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit

class WeatherSurveyViewController: UIViewController {

    @IBOutlet weak var weatherDelay: UIButton!
    @IBOutlet weak var weatherCancelation: UIButton!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var pilotName: UILabel!
    @IBOutlet weak var timeReport: UILabel!

    @IBOutlet weak var quetion1OmdbVfr: UIButton!
    @IBOutlet weak var quetion1OmdbMvfr: UIButton!
    @IBOutlet weak var quetion1OmdbIfr: UIButton!
    @IBOutlet weak var quetion1OmdbLifr: UIButton!
    @IBOutlet weak var quetion1OmdbVisibility: UITextField!
    @IBOutlet weak var quetion1OmdbCloudBase: UITextField!
    
    @IBOutlet weak var quetion1OmdwVfr: UIButton!
    @IBOutlet weak var quetion1OmdwMvfr: UIButton!
    @IBOutlet weak var quetion1OmdwIfr: UIButton!
    @IBOutlet weak var quetion1OmdwLifr: UIButton!
    @IBOutlet weak var quetion1OmdwVisibility: UITextField!
    @IBOutlet weak var quetion1OmdwCloudBase: UITextField!
    
    @IBOutlet weak var quetion2OmdbVfr: UIButton!
    @IBOutlet weak var quetion2OmdbMvfr: UIButton!
    @IBOutlet weak var quetion2OmdbIfr: UIButton!
    @IBOutlet weak var quetion2OmdbLifr: UIButton!
    @IBOutlet weak var quetion2OmdbVisibility: UITextField!
    @IBOutlet weak var quetion2OmdbCloudBase: UITextField!
    
    @IBOutlet weak var quetion2MbzVfr: UIButton!
    @IBOutlet weak var quetion2MbzMvfr: UIButton!
    @IBOutlet weak var quetion2MbzIfr: UIButton!
    @IBOutlet weak var quetion2MbzLifr: UIButton!
    @IBOutlet weak var quetion2MbzVisibility: UITextField!
    @IBOutlet weak var quetion2MbzCloudBase: UITextField!
    
    @IBOutlet weak var quetion3OmdbYes: UIButton!
    @IBOutlet weak var quetion3OmdbNo: UIButton!
    
    @IBOutlet weak var quetion3OmdwYes: UIButton!
    @IBOutlet weak var quetion3OmdwNo: UIButton!
    
    @IBOutlet weak var nextReportTime: UITextField!
    @IBOutlet weak var nextReportTimeLabel: UILabel!
    
    @IBOutlet weak var comment: UITextView!

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    var condition = "nill"
    
    var answer1Omdb = "nill"
    var answer1OmdbVisibility = "nill"
    var answer1OmdbCloudBase = "nill"
    
    var answer1Omdw = "nill"
    var answer1OmdwVisibility = "nill"
    var answer1OmdwCloudBase = "nill"
    
    var answer2Omdb = "nill"
    var answer2OmdbVisibility = "nill"
    var answer2OmdbCloudBase = "nill"
    
    var answer2Mbz = "nill"
    var answer2MbzVisibility = "nill"
    var answer2MbzCloudBase = "nill"
    
    var answer3Omdb = "nill"
    
    var answer3Omdw = "nill"
    
    var localTimeReport = "nill"
    var vComment = "nill"
    
    let delay = "delay"
    let cancel = "cancel"
    let vfr = "VFR"
    let mvfr = "MVFR"
    let ifr = "IFR"
    let lifr = "LIFR"
    
    let yes = "YES"
    let no = "NO"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         scrollView.contentSize.height=1600
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func weatherDelay(sender: AnyObject) {
        condition = delay
        nextReportTimeLabel.hidden = false
        nextReportTime.hidden = false
    }
   
    @IBAction func weatherCancelation(sender: AnyObject) {
        condition = cancel
        nextReportTimeLabel.hidden = true
        nextReportTime.hidden = true
    }

    @IBAction func quetion1OmdbVfr(sender: AnyObject) {
        answer1Omdb=vfr
    }
    @IBAction func quetion1OmdbMvfr(sender: AnyObject) {
        answer1Omdb=mvfr
    }
    @IBAction func answer1OmdbIfr(sender: AnyObject) {
        answer1Omdb=ifr
    }
    @IBAction func quetion1OmdbLifr(sender: AnyObject) {
        answer1Omdb=lifr
    }
    
    @IBAction func quetion1Omdw(sender: AnyObject) {
        answer1Omdw=vfr
    }
    @IBAction func quetion1OmdwMvfr(sender: AnyObject) {
        answer1Omdw=mvfr
    }
    @IBAction func quetion1OmdwIfr(sender: AnyObject) {
        answer1Omdw=ifr
    }
    @IBAction func quetion1OmdwLifr(sender: AnyObject) {
        answer1Omdw=lifr
    }
    
    @IBAction func quetion2OmdbVfr(sender: AnyObject) {
         answer2Omdb=vfr
    }
    @IBAction func quetion2OmdbMvfr(sender: AnyObject) {
        answer2Omdb=mvfr
    }
    @IBAction func answer2OmdbIfr(sender: AnyObject) {
        answer2Omdb=ifr
    }
    @IBAction func quetion2OmdbLifr(sender: AnyObject) {
        answer2Omdb=lifr
    }
    
    @IBAction func quetion2MbzVfr(sender: AnyObject) {
        answer2Mbz=vfr
    }
    @IBAction func quetion2MbzMvfr(sender: AnyObject) {
        answer2Mbz=mvfr
    }
    @IBAction func quetion2MbzIfr(sender: AnyObject) {
        answer2Mbz=ifr
    }
    @IBAction func quetion2MbzLifr(sender: AnyObject) {
        answer2Mbz=lifr
    }
    
    @IBAction func quetion3OmdbYes(sender: AnyObject) {
        answer3Omdb = yes
    }
    
    @IBAction func quetion3OmdbNo(sender: AnyObject) {
        answer3Omdb = no
    }
    
    @IBAction func quetion3OmdwYes(sender: AnyObject) {
        answer3Omdw = yes
    }
    
    @IBAction func quetion3OmdwNo(sender: AnyObject) {
        answer3Omdw = no
    }
    
    @IBAction func submit(sender: AnyObject) {
        
        print("Submit")
        
        if validate(){
            print("Validated")
        }else{
            print("Fail")
        }
        
        logdisplay()
    }
    
    func validate() -> Bool {
        
        answer1OmdbVisibility = quetion1OmdbVisibility.text!
        answer1OmdbCloudBase = quetion1OmdbCloudBase.text!
        
        answer1OmdwVisibility = quetion1OmdwVisibility.text!
        answer1OmdwCloudBase = quetion1OmdwCloudBase.text!
        
        answer2OmdbVisibility = quetion2OmdbVisibility.text!
        answer2OmdbCloudBase = quetion2OmdbCloudBase.text!
        
        answer2MbzVisibility = quetion2MbzVisibility.text!
        answer2MbzCloudBase = quetion2MbzCloudBase.text!
        
        return false
    }
    
    func logdisplay() {
        
        print("ANSWER 1 OMDB : " + answer1Omdb)
        print("ANSWER 1 OMDB VISIBILITY : " + answer1OmdbVisibility)
        print("ANSWER 1 OMDB CLOUD BASE : " + answer1OmdbCloudBase)
        print("ANSWER 1 OMDW : " + answer1Omdw)
        print("ANSWER 1 OMDW VISIBILITY : " + answer1OmdwVisibility)
        print("ANSWER 1 OMDW CLOUD BASE : " + answer1OmdwCloudBase)
        print("ANSWER 2 OMDB : " + answer2Omdb)
        print("ANSWER 2 OMDB VISIBILITY : " + answer2OmdbVisibility)
        print("ANSWER 2 OMDB CLOUD BASE : " + answer2OmdbCloudBase)
        print("ANSWER 2 MBZ : " + answer2Mbz)
        print("ANSWER 2 MBZ VISIBILITY : " + answer2MbzVisibility)
        print("ANSWER 2 MBZ CLOUD BASE : " + answer2MbzCloudBase)
        print("ANSWER 3 OMDB : " + answer3Omdb)
        print("ANSWER 3 OMDW : " + answer3Omdw)
    }
    
    
    
}
