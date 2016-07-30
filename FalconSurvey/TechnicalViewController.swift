//
//  TechnicalViewController.swift
//  FalconSurvey
//
//  Created by Sehal Sein on 27/07/16.
//  Copyright © 2016 Sehal. All rights reserved.
//

import UIKit

class TechnicalViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var aircraftId: UIPickerView!
    
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
        
        self.title = "Technical Delay / Cancelation"
        
        scrollView.contentSize.height=800
        
        aircraftId.delegate = self
        aircraftId.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func technicalDelay(sender: AnyObject) {
    }
    @IBAction func technicalCancelation(sender: AnyObject) {
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

    @IBAction func submit(sender: AnyObject) {
        print("clicked")
    }
}
