//
//  ViewController.swift
//  Miracle-Pill
//
//  Created by Samer Mujibuddin on 11/16/16.
//  Copyright © 2016 Samer Mujibuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var miraclePillImg: UIImageView!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    
    
    let states = ["Alaska", "Texas", "California", "Michigan", "Indiana"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBuyButtonPressed(_ sender: Any) {
        
        
        
     
        
        
        
        
        
        
    }
    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

}

