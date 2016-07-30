//
//  TechnicalSurveyViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 30/07/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit
import Firebase

class TechnicalSurveyViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var aircraftId: UIPickerView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var technicalDelay: UIButton!
    @IBOutlet weak var technicalCancelation: UIButton!
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var pilotName: UILabel!
    @IBOutlet weak var timeofReport: UILabel!
    
    @IBOutlet weak var quetion1Option1: UIButton!
    @IBOutlet weak var quetion1Option2: UIButton!
    @IBOutlet weak var quetion1Option3: UIButton!
    @IBOutlet weak var quetion1Option4: UIButton!
    
    @IBOutlet weak var quetion2Option1: UIButton!
    @IBOutlet weak var quetion2Option2: UIButton!
    @IBOutlet weak var quetion2Option3: UIButton!
    @IBOutlet weak var quetion2Option4: UIButton!
    
    @IBOutlet weak var quetion3Yes: UIButton!
    @IBOutlet weak var quetion3No: UIButton!
    
    @IBOutlet weak var quetion4Option1: UIButton!
    @IBOutlet weak var quetion4Option2: UIButton!
    @IBOutlet weak var quetion4Option3: UIButton!
    
    let rootReference = FIRDatabase.database().reference()
    
    var aircraftIdArray = ["A6-FLI",
                           "A6-FLY",
                           "A6-FLB",
                           "A6-FLS",
                           "A6-FLK",
                           "A6-SBK",
                           "A6-SBS",]
    
    var aircraftIdIndex = 0
    
    var condition = "null"
    var vDate = "null"
    var vPilotName = "null"
    var vTimeOfReport = "null"
    var answer1 = "null"
    var answer2 = "null"
    var answer3 = "null"
    var answer4 = "null"
    let delay = "delay"
    let cancel = "cancel"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("LOADED")
        self.title = "Technical Delay / Cancelation"
        
        //scrollView.contentSize.height=800
        
        aircraftId.delegate = self
        aircraftId.dataSource = self
        
        date.text = getDateandTime("date")
        timeofReport.text = getDateandTime("time")
        vTimeOfReport=getDateandTime("time")
        
        technicalCancelation.selected = true
        condition = delay
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quetion1Option1(sender: AnyObject) {
        answer1 = "1"
    }
    @IBAction func quetion1Option2(sender: AnyObject) {
        answer1 = "2"
    }
    @IBAction func quetion1Option3(sender: AnyObject) {
        answer1 = "3"
    }
    @IBAction func quetion1Option4(sender: AnyObject) {
        answer1 = "4"
    }
    @IBAction func quetion2Option1(sender: AnyObject) {
        answer2 = "1"
    }
    @IBAction func quetion2Option2(sender: AnyObject) {
        answer2 = "2"
    }
    @IBAction func quetion2Option3(sender: AnyObject) {
        answer2 = "3"
    }
    @IBAction func quetion2Option4(sender: AnyObject) {
        answer2 = "4"
    }
    @IBAction func quetion3OptionNo(sender: AnyObject) {
        answer3 = "No"
    }
    @IBAction func quetion3OptionYes(sender: AnyObject) {
        answer3 = "Yes"
    }
    @IBAction func quetion4Option1(sender: AnyObject) {
        answer4 = "1"
    }
    @IBAction func quetion4Option2(sender: AnyObject) {
        answer4 = "2"
    }
    @IBAction func quetion4Option3(sender: AnyObject) {
        answer4 = "3"
    }
    
    
    @IBAction func submit(sender: AnyObject) {
        print("click")
        
        if validate(){
            print("Successfull")
            let vUserId = "AS"
            let key = rootReference.child("posts").childByAutoId().key
            let weatherData=["userId": vUserId,
                             "name":vPilotName,
                             "date":getDate(),
                             "aircraftID": aircraftIdArray[aircraftIdIndex],
                             "timeOfReport": vTimeOfReport,
                             "answer1": answer1,
                             "answer2": answer2,
                             "answer3": answer3,
                             "answer4": answer4,
                             //"comment": vComment,
                "key":key
                
            ]
            
            let postDetail = ["userId": vUserId,
                              "name": vPilotName,
                              "date": getDate(),
                              "key" : key,
                              "type" : "technicalposts"
            ]
            
            let childUpdates = ["/posts/\(key)": postDetail,
                                "/userposts/\(vUserId)/\(key)/": weatherData,
                                "/technicalposts/\(key)": weatherData
            ]
            
            rootReference.updateChildValues(childUpdates)
            print("Complete")
            
        }else{
            print("Unsuccessfull")
        }
        logdisplay()
    }
    
    func validate() -> Bool {
        
        if answer1 != "null" &&
            answer2 != "null" &&
            answer3 != "null" &&
            answer4 != "null" {
            
            return true
        }
        return false
    }
    
    func logdisplay()  {
        
        print("Condition : " + condition)
        print("Date : " + "\(getDate())")
        print("Pilot Name : " + vPilotName)
        print("Aircraft Id : " + aircraftIdArray[aircraftIdIndex])
        print("Time of Report : " + vTimeOfReport)
        print("Quetion 1 : " + answer1)
        print("Quetion 2 : " + answer2)
        print("Quetion 3 : " + answer3)
        print("Quetion 4 : " + answer4)
        
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
    
    @IBAction func technicalDelay(sender: AnyObject) {
        condition = delay
    }
    @IBAction func technicalCancelation(sender: AnyObject) {
        condition = cancel
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
}
