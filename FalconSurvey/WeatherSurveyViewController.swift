//
//  WeatherSurveyViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 26/07/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit
import Firebase

class WeatherSurveyViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var weatherDelay: UIButton!
    @IBOutlet weak var weatherCancelation: UIButton!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var pilotName: UILabel!
    @IBOutlet weak var timeReport: UILabel!
    @IBOutlet weak var aircraftId: UIPickerView!
    
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
    
    
    let rootReference = FIRDatabase.database().reference()
    
    var condition = "nill"
    
    var vDate = 0000
    var vPilotName = "nill"
    var vAircraftId = "nill"
    var vTimeReport = "nill"
    
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
    let NA = "Not Applicable"
    
    var aircraftIdArray = ["A6-FLI",
                           "A6-FLY",
                           "A6-FLB",
                           "A6-FLS",
                           "A6-FLK",
                           "A6-SBK",
                           "A6-SBS",]
    
    var aircraftIdIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Weather Delay / Cancelation"
        
        localTimeReport = NA
        scrollView.contentSize.height=1600
        aircraftId.delegate = self
        aircraftId.dataSource = self
        
        date.text = getDateandTime("date")
        timeReport.text = getDateandTime("time")
        vTimeReport=getDateandTime("time")
        
        weatherCancelation.selected = true
        condition = delay
        
        // Do any additional setup after loading the view.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("TITLE")
        return aircraftIdArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aircraftIdArray.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        aircraftIdIndex = row
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //self.scrollView.endEditing(true)
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
            let vUserId = "AS"
            let key = rootReference.child("posts").childByAutoId().key
            let weatherData=["userId": vUserId,
                             "name":vPilotName,
                             "date":getDate(),
                             "aircraftID": vAircraftId,
                             "timeOfReport": vTimeReport,
                             "answer1Omdb": answer1Omdb,
                             "answer1OmdbVisibility": answer1OmdbVisibility,
                             "answer1OmdbCloudBase": answer1OmdbCloudBase,
                             "answer1Omdw": answer1Omdw,
                             "answer1OmdwVisibility": answer1OmdwVisibility,
                             "answer1OmdwCloudBase": answer1OmdwCloudBase,
                             "answer2Omdb": answer2Omdb,
                             "answer2OmdbVisibility": answer2OmdbVisibility,
                             "answer2OmdbCloudBase": answer2OmdbCloudBase,
                             "answer2Mbz": answer2Mbz,
                             "answer2MbzVisibility": answer2MbzVisibility,
                             "answer2MbzCloudBase": answer2MbzCloudBase,
                             "answer3Omdb": answer3Omdb,
                             "answer3Omdw": answer3Omdw,
                             "localTimeReport": localTimeReport,
                             "comment": vComment,
                             "key":key
                
            ]
            let postDetail = ["userId": vUserId,
                              "name": vPilotName,
                              "date": getDate(),
                              "key" : key,
                              "type" : "weatherposts"
            ]
            
            let childUpdates = ["/posts/\(key)": postDetail,
                                "/userposts/\(vUserId)/\(key)/": weatherData,
                                "/weatherposts/\(key)": weatherData
            ]
            
            rootReference.updateChildValues(childUpdates)
            print("Complete")
            self.performSegueWithIdentifier("submitSegue", sender: self)
            
        }else{
            // create the alert
            let alert = UIAlertController(title: "Alert!", message: "Please fill all fields.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            print("Fail")
        }
        logdisplay()
    }
    
    func validate() -> Bool {
        
        if quetion1OmdbVisibility.text!.isEmpty {
            answer1OmdbVisibility="nill"
            //            quetion1OmdbVisibility.layer.borderWidth = 2
            //            quetion1OmdbVisibility.layer.borderColor = UIColor.redColor().CGColor
            //            quetion1OmdbVisibility.layer.cornerRadius = 2
            
            print("Quetion 1 OMDB VISIBILITY : Please Enter")
        }else{
            answer1OmdbVisibility=quetion1OmdbVisibility.text!
        }
        if quetion1OmdbCloudBase.text!.isEmpty {
            print("AD")
            answer1OmdbCloudBase="nill"
            //            quetion1OmdbCloudBase.layer.borderWidth = 2
            //            quetion1OmdbCloudBase.layer.borderColor = UIColor.redColor().CGColor
            //            quetion1OmdbCloudBase.layer.cornerRadius = 2
            print("Quetion 1 OMDB CLOUD : Please Enter")
        }else{
            answer1OmdbCloudBase=quetion1OmdbCloudBase.text!
        }
        
        if quetion1OmdwVisibility.text!.isEmpty {
            answer1OmdwVisibility="nill"
            //            quetion1OmdwVisibility.layer.borderWidth = 2
            //            quetion1OmdwVisibility.layer.borderColor = UIColor.redColor().CGColor
            //            quetion1OmdwVisibility.layer.cornerRadius = 2
            print("Quetion 1 OMDW VISIBILITY : Please Enter")
        }else{
            answer1OmdwVisibility=quetion1OmdwVisibility.text!
        }
        if quetion1OmdwCloudBase.text!.isEmpty {
            answer1OmdwCloudBase="nill"
            //            quetion1OmdwCloudBase.layer.borderWidth = 2
            //            quetion1OmdwCloudBase.layer.borderColor = UIColor.redColor().CGColor
            //            quetion1OmdwCloudBase.layer.cornerRadius = 2
            print("Quetion 1 OMDW CLOUD : Please Enter")
        }else{
            answer1OmdwCloudBase=quetion1OmdwCloudBase.text!
        }
        
        if quetion2OmdbVisibility.text!.isEmpty {
            answer2OmdbVisibility="nill"
            //            quetion2OmdbVisibility.layer.borderWidth = 2
            //            quetion2OmdbVisibility.layer.borderColor = UIColor.redColor().CGColor
            //            quetion2OmdbVisibility.layer.cornerRadius = 2
            print("Quetion 2 OMDW VISIBILITY : Please Enter")
        }else{
            answer2OmdbVisibility=quetion2OmdbVisibility.text!
        }
        if quetion2OmdbCloudBase.text!.isEmpty {
            answer2OmdbCloudBase="nill"
            print("Quetion 2 OMDB CLOUD : Please Enter")
        }else{
            answer2OmdbCloudBase=quetion2OmdbCloudBase.text!
        }
        
        if quetion2MbzVisibility.text!.isEmpty {
            answer2MbzVisibility="nill"
            print("Quetion 2 Mbz VISIBILITY: Please Enter")
        }else{
            answer2MbzVisibility=quetion2MbzVisibility.text!
        }
        if quetion2MbzCloudBase.text!.isEmpty {
            answer2MbzCloudBase="nill"
            print("Quetion 2 Mbz CLOUD : Please Enter")
        }else{
            answer2MbzCloudBase=quetion2MbzCloudBase.text!
        }
        
        if comment.text!.isEmpty {
            vComment=NA
        }else{
            vComment=comment.text
        }
        
        vAircraftId = aircraftIdArray[aircraftIdIndex]
        
        if(vAircraftId != "nill"
            && answer1Omdb != "nill"
            && answer1OmdbVisibility != "nill"
            && answer1Omdw != "nill"
            && answer1OmdwVisibility != "nill"
            && answer1OmdwCloudBase != "nill"
            && answer2Omdb != "nill"
            && answer2OmdbVisibility != "nill"
            && answer2OmdbCloudBase != "nill"
            && answer2Mbz != "nill"
            && answer2MbzVisibility != "nill"
            && answer2MbzCloudBase != "nill"
            && answer3Omdb != "nill"
            && answer3Omdw != "nill"
            ){
            
            if condition == delay {
                if nextReportTime.text!.isEmpty {
                    localTimeReport="nill"
                    print("Quetion NEXT STATUS REPORT : Please Enter")
                    return false
                }else{
                    localTimeReport=nextReportTime.text!
                }
            }else{
                localTimeReport = NA
            }
            return true
        }else{
            return false
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
        
        let Date = "\(year)" + vMonth + vDay
        
        return Int(Date)!
    }
    
    func getDateandTime(condition : String) -> String {
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let datecomponents = calendar.components([.Day , .Month , .Year], fromDate: date)
        let timecomponents = calendar.components([.Hour, .Minute], fromDate: date)
        let hour = timecomponents.hour
        let minutes = timecomponents.minute
        let year =  datecomponents.year
        let month = datecomponents.month
        let day = datecomponents.day
        let vMonth = String(format: "%02d", month)
        let vDay = String(format: "%02d", day)
        
        var value = "nill"
        if condition == "date"{
            value = vDay + "-" + vMonth + "-" + "\(year)"
        }else if condition == "time"{
            value = "\(hour)"+" : "+"\(minutes)"
        }
        
        return value
    }
    
    func logdisplay() {
        
        print("Condition : " + condition)
        print("Date : " + "\(getDate())")
        print("Pilot Name : " + vPilotName)
        print("Aircraft Id : " + vAircraftId)
        print("Time od Report : " + vTimeReport)
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
        print("ANSWER NEXT STATUS REPORT : " + localTimeReport)
        print("Comment : " + vComment)
        
    }
    
    
    
}
