//
//  ViewController.swift
//  MiraclePills
//
//  Created by Tom on 10/07/2017.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var miraclePillEmojiImage: UIImageView!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var miraclePillPriceLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var dividerLine: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTxtFld: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTxtFld: UITextField!
    @IBOutlet weak var CityLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var cityTxtFld: UITextField!
    @IBOutlet weak var buyNowBtnImage: UIImageView!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var successIndicatorImage: UIImageView!
    
    let states = ["Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czeck Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "United Kingdom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func statePickerBtn(_ sender: Any) {
        
        statePicker.isHidden = false
        buyNowBtnImage.isHidden = true
        statePickerBtn.isHidden = true
        
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
        statePickerBtn.isHidden = false
        statePicker.isHidden = true
        buyNowBtnImage.isHidden = false
        
    }
    
    @IBAction func buyNowButtonPressed(_ sender: Any) {

        miraclePillEmojiImage.isHidden = true
        miraclePillLabel.isHidden = true
        miraclePillPriceLabel.isHidden = true
        dividerLine.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTxtFld.isHidden = true
        addressLabel.isHidden = true
        addressTxtFld.isHidden = true
        CityLabel.isHidden = true
        cityTxtFld.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtnImage.isHidden = true
        
        successIndicatorImage.isHidden = false
    
    }
    
    
}

