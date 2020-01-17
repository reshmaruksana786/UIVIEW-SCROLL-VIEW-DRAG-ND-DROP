//
//  ViewController.swift
//  UIVIEW &SCROLL VIEW1
//
//  Created by Syed.Reshma Ruksana on 23/09/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var view2: UIView!
    
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var labelSwitch: UISwitch!
    
    @IBOutlet weak var buttonSwitch: UISwitch!
    
    
    @IBOutlet weak var switchSwitch: UISwitch!
    
    
    @IBOutlet weak var horizontalSwitch: UISwitch!
    
    @IBOutlet weak var verticalSwitch: UISwitch!
    
    
    @IBOutlet weak var minimumValueLabel: UILabel!
    
    @IBOutlet weak var maximumValueLabel: UILabel!
    
    
    @IBOutlet weak var sliderChange: UISlider!
    
    @IBOutlet weak var stepperChange: UIStepper!
    
    @IBOutlet weak var displayValues: UILabel!
    
    @IBOutlet weak var clickHereButton: UIButton!
    
    
    
    var createLabel:UILabel!
    var createButton:UIButton!
    var createSwitch:UISwitch!
    
    
    
    var labelSwitchArray=[UILabel]()
    var buttonSwitchArray=[UIButton]()
    var switchSwitchArray=[UISwitch]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func sliderValue(_ sender: Any) {
        
        var valueChanged:String=String(Int(sliderChange.value))
        displayValues.text=valueChanged
        stepperChange.value=Double(sliderChange.value)
    }
    
    
    @IBAction func stepperValue(_ sender: Any) {
        
        sliderChange.setValue(Float(stepperChange.value), animated: true)
        
        var valueChangedForStepper:String=String(Int(stepperChange.value))
        displayValues.text=valueChangedForStepper
        stepperChange.addTarget(self, action: #selector(clickHereButton(_:)), for: UIControl.Event.valueChanged)
        
        
    }
   
    
    @IBAction func clickHereButton(_ sender: UIButton) {
        
        for val in labelSwitchArray
        {
            val.removeFromSuperview()
        }
        for val in buttonSwitchArray
        {
            val.removeFromSuperview()
        }
        for val in switchSwitchArray
        {
            val.removeFromSuperview()
        }
        
        //Horizontal Label
        
        let value = Int(sliderChange.value)
        if(labelSwitch.isOn == true && horizontalSwitch.isOn == true)
        {
            verticalSwitch.setOn(false, animated: true)
            
            var labelx:UInt16=10
            var labely:UInt16=25
            for i in 1...value
            {
                if (labelx>=400)
                {
                    labelx=10
                    labely=labely+40
                    createLabel=UILabel()
                    createLabel.frame=CGRect(x: Int(labelx), y: Int(labely), width: 70, height: 50)
                    createLabel.text="\(i)"
                    scrollView.addSubview(createLabel)
                    
                }
                
            }
            
        }
        
        
    }
    
}

